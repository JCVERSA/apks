.class public final Lcom/yandex/div/core/view2/divs/DivSliderBinder$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/internal/widget/slider/SliderView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivSliderBinder$b;->b(Le74;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/core/view2/divs/DivSliderBinder;

.field public final synthetic b:Lcom/yandex/div/core/view2/a;

.field public final synthetic c:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

.field public final synthetic d:Le74;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Le74;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$b$a;->a:Lcom/yandex/div/core/view2/divs/DivSliderBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$b$a;->b:Lcom/yandex/div/core/view2/a;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$b$a;->c:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$b$a;->d:Le74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Float;)V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$b$a;->a:Lcom/yandex/div/core/view2/divs/DivSliderBinder;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->q(Lcom/yandex/div/core/view2/divs/DivSliderBinder;)Lgd2;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$b$a;->b:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$b$a;->c:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    invoke-interface {v0, v1, v2, p1}, Lgd2;->o(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Ljava/lang/Float;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$b$a;->d:Le74;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ls86;->e(F)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
