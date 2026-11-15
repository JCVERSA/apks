.class final Lcom/yandex/div/core/view2/Div2View$histogramReporter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/Div2View;-><init>(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/yandex/div/histogram/Div2ViewHistogramReporter;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yandex/div/core/view2/Div2View;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View$histogramReporter$2;->this$0:Lcom/yandex/div/core/view2/Div2View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;
    .locals 3

    .line 2
    new-instance v0, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    .line 3
    new-instance v1, Lcom/yandex/div/core/view2/Div2View$histogramReporter$2$1;

    iget-object v2, p0, Lcom/yandex/div/core/view2/Div2View$histogramReporter$2;->this$0:Lcom/yandex/div/core/view2/Div2View;

    invoke-direct {v1, v2}, Lcom/yandex/div/core/view2/Div2View$histogramReporter$2$1;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View$histogramReporter$2;->this$0:Lcom/yandex/div/core/view2/Div2View;

    invoke-static {p0}, Lcom/yandex/div/core/view2/Div2View;->access$getRenderConfig$p(Lcom/yandex/div/core/view2/Div2View;)Lc74;

    move-result-object p0

    .line 5
    invoke-direct {v0, v1, p0}, Lcom/yandex/div/histogram/Div2ViewHistogramReporter;-><init>(Lc74;Lc74;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View$histogramReporter$2;->invoke()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;

    move-result-object p0

    return-object p0
.end method
