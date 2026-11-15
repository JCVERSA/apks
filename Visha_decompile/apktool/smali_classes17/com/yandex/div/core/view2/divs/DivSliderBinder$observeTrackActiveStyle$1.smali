.class final Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTrackActiveStyle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivSliderBinder;->J(Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
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
        "it",
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
.field final synthetic $resolver:Loj3;

.field final synthetic $this_observeTrackActiveStyle:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

.field final synthetic $trackStyle:Lcom/yandex/div2/DivDrawable;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivSliderBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTrackActiveStyle$1;->this$0:Lcom/yandex/div/core/view2/divs/DivSliderBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTrackActiveStyle$1;->$this_observeTrackActiveStyle:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTrackActiveStyle$1;->$resolver:Loj3;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTrackActiveStyle$1;->$trackStyle:Lcom/yandex/div2/DivDrawable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTrackActiveStyle$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTrackActiveStyle$1;->this$0:Lcom/yandex/div/core/view2/divs/DivSliderBinder;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTrackActiveStyle$1;->$this_observeTrackActiveStyle:Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTrackActiveStyle$1;->$resolver:Loj3;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$observeTrackActiveStyle$1;->$trackStyle:Lcom/yandex/div2/DivDrawable;

    invoke-static {p1, v0, v1, p0}, Lcom/yandex/div/core/view2/divs/DivSliderBinder;->l(Lcom/yandex/div/core/view2/divs/DivSliderBinder;Lcom/yandex/div/internal/widget/slider/SliderView;Loj3;Lcom/yandex/div2/DivDrawable;)V

    return-void
.end method
