.class public final Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivSliderBinder;->A(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lzfb;",
        "run",
        "()V",
        "androidx/core/view/ViewKt$doOnPreDraw$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $this_checkSliderTicks$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

.field final synthetic $this_doOnPreDraw:Landroid/view/View;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivSliderBinder;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/core/view2/divs/DivSliderBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;->$this_doOnPreDraw:Landroid/view/View;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;->$this_checkSliderTicks$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;->this$0:Lcom/yandex/div/core/view2/divs/DivSliderBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;->$this_checkSliderTicks$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getActiveTickMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;->$this_checkSliderTicks$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getInactiveTickMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;->$this_checkSliderTicks$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getMaxValue()F

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;->$this_checkSliderTicks$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->getMinValue()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;->$this_checkSliderTicks$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->getActiveTickMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;->$this_checkSliderTicks$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/slider/SliderView;->getInactiveTickMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;->$this_checkSliderTicks$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;->this$0:Lcom/yandex/div/core/view2/divs/DivSliderBinder;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->p(Lcom/yandex/div/core/view2/divs/DivSliderBinder;)Lwc3;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;->this$0:Lcom/yandex/div/core/view2/divs/DivSliderBinder;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->p(Lcom/yandex/div/core/view2/divs/DivSliderBinder;)Lwc3;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lwc3;->d()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v3, "Slider ticks overlap each other."

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$checkSliderTicks$$inlined$doOnPreDraw$1;->this$0:Lcom/yandex/div/core/view2/divs/DivSliderBinder;

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->p(Lcom/yandex/div/core/view2/divs/DivSliderBinder;)Lwc3;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lwc3;->f(Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method
