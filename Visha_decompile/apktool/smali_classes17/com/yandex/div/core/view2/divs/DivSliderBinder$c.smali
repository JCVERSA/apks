.class public Lcom/yandex/div/core/view2/divs/DivSliderBinder$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivSliderBinder;->G(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div2/DivSlider;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

.field public final synthetic b:Lcom/yandex/div/core/view2/divs/DivSliderBinder;

.field public final synthetic c:Lcom/yandex/div/core/view2/a;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$c;->a:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$c;->b:Lcom/yandex/div/core/view2/divs/DivSliderBinder;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$c;->c:Lcom/yandex/div/core/view2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$c;->c(Ljava/lang/Long;)V

    return-void
.end method

.method public b(Le74;)V
    .locals 3

    const-string v0, "valueUpdater"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$c;->a:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivSliderBinder$c$a;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$c;->b:Lcom/yandex/div/core/view2/divs/DivSliderBinder;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$c;->c:Lcom/yandex/div/core/view2/a;

    invoke-direct {v1, v2, p0, v0, p1}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$c$a;-><init>(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Le74;)V

    invoke-virtual {v0, v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->addOnThumbChangedListener(Lcom/yandex/div/internal/widget/slider/SliderView$c;)V

    return-void
.end method

.method public c(Ljava/lang/Long;)V
    .locals 2

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$c;->a:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->setThumbValue(FZ)V

    return-void
.end method
