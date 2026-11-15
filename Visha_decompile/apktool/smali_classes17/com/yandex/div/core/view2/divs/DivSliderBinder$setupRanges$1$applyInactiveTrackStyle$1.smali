.class final Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyInactiveTrackStyle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivSliderBinder;->L(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div2/DivSlider;Loj3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "<anonymous parameter 0>",
        "Lzfb;",
        "invoke",
        "(Ljava/lang/Object;)V",
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
.field final synthetic $metrics:Landroid/util/DisplayMetrics;

.field final synthetic $range:Lcom/yandex/div/internal/widget/slider/SliderView$d;

.field final synthetic $resolver:Loj3;

.field final synthetic $this_setupRanges:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

.field final synthetic $trackInactiveStyle:Lcom/yandex/div2/DivDrawable;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div2/DivDrawable;Landroid/util/DisplayMetrics;Loj3;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyInactiveTrackStyle$1;->$this_setupRanges:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyInactiveTrackStyle$1;->$range:Lcom/yandex/div/internal/widget/slider/SliderView$d;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyInactiveTrackStyle$1;->$trackInactiveStyle:Lcom/yandex/div2/DivDrawable;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyInactiveTrackStyle$1;->$metrics:Landroid/util/DisplayMetrics;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyInactiveTrackStyle$1;->$resolver:Loj3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyInactiveTrackStyle$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->o()Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyInactiveTrackStyle$1;->$this_setupRanges:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyInactiveTrackStyle$1;->$range:Lcom/yandex/div/internal/widget/slider/SliderView$d;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyInactiveTrackStyle$1;->$trackInactiveStyle:Lcom/yandex/div2/DivDrawable;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyInactiveTrackStyle$1;->$metrics:Landroid/util/DisplayMetrics;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$applyInactiveTrackStyle$1;->$resolver:Loj3;

    const-string v3, "metrics"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->y0(Lcom/yandex/div2/DivDrawable;Landroid/util/DisplayMetrics;Loj3;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->l(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
