.class final Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivImageBinder;->E(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lwc3;)V
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
.field final synthetic $bindingContext:Lcom/yandex/div/core/view2/a;

.field final synthetic $errorCollector:Lwc3;

.field final synthetic $newDiv:Lcom/yandex/div2/DivImage;

.field final synthetic $resolver:Loj3;

.field final synthetic $this_observePlaceholders:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivImageBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Loj3;Lwc3;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;->$this_observePlaceholders:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivImageBinder;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;->$bindingContext:Lcom/yandex/div/core/view2/a;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;->$newDiv:Lcom/yandex/div2/DivImage;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;->$resolver:Loj3;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;->$errorCollector:Lwc3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;->$this_observePlaceholders:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/LoadableImageView;->isImageLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivImageBinder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;->$this_observePlaceholders:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    .line 4
    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;->$bindingContext:Lcom/yandex/div/core/view2/a;

    .line 5
    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;->$newDiv:Lcom/yandex/div2/DivImage;

    .line 6
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;->$resolver:Loj3;

    invoke-static {v0, p1, v1, v3}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->m(Lcom/yandex/div/core/view2/divs/DivImageBinder;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;)Z

    move-result v4

    .line 7
    iget-object v5, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;->$errorCollector:Lwc3;

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->k(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;ZLwc3;)V

    return-void
.end method
