.class final Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$1$1;
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
        "\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "Lzfb;",
        "invoke",
        "(J)V",
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

.field final synthetic $this_with:Lcom/yandex/div2/DivEdgeInsets;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/internal/widget/slider/SliderView$d;Lcom/yandex/div2/DivEdgeInsets;Loj3;Landroid/util/DisplayMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$1$1;->$this_setupRanges:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$1$1;->$range:Lcom/yandex/div/internal/widget/slider/SliderView$d;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$1$1;->$this_with:Lcom/yandex/div2/DivEdgeInsets;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$1$1;->$resolver:Loj3;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$1$1;->$metrics:Landroid/util/DisplayMetrics;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$1$1;->invoke(J)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(J)V
    .locals 8

    .line 2
    invoke-static {}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->o()Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$1$1;->$this_setupRanges:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$1$1;->$range:Lcom/yandex/div/internal/widget/slider/SliderView$d;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$1$1;->$this_with:Lcom/yandex/div2/DivEdgeInsets;

    iget-object v6, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$1$1;->$resolver:Loj3;

    iget-object v7, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$setupRanges$1$3$1$1;->$metrics:Landroid/util/DisplayMetrics;

    invoke-static {}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->o()Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;

    move-result-object v2

    const-string p0, "metrics"

    invoke-static {v7, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;->a(Lcom/yandex/div2/DivEdgeInsets;JLoj3;Landroid/util/DisplayMetrics;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/yandex/div/internal/widget/slider/SliderView$d;->n(I)V

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
