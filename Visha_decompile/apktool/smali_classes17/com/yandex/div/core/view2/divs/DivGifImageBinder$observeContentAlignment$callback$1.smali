.class final Lcom/yandex/div/core/view2/divs/DivGifImageBinder$observeContentAlignment$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->m(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Loj3;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V
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
.field final synthetic $horizontalAlignment:Lcom/yandex/div/json/expressions/Expression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/div/json/expressions/Expression;"
        }
    .end annotation
.end field

.field final synthetic $resolver:Loj3;

.field final synthetic $this_observeContentAlignment:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

.field final synthetic $verticalAlignment:Lcom/yandex/div/json/expressions/Expression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/div/json/expressions/Expression;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivGifImageBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivGifImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Loj3;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/core/view2/divs/DivGifImageBinder;",
            "Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;",
            "Loj3;",
            "Lcom/yandex/div/json/expressions/Expression;",
            "Lcom/yandex/div/json/expressions/Expression;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$observeContentAlignment$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivGifImageBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$observeContentAlignment$callback$1;->$this_observeContentAlignment:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$observeContentAlignment$callback$1;->$resolver:Loj3;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$observeContentAlignment$callback$1;->$horizontalAlignment:Lcom/yandex/div/json/expressions/Expression;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$observeContentAlignment$callback$1;->$verticalAlignment:Lcom/yandex/div/json/expressions/Expression;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$observeContentAlignment$callback$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$observeContentAlignment$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivGifImageBinder;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$observeContentAlignment$callback$1;->$this_observeContentAlignment:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$observeContentAlignment$callback$1;->$resolver:Loj3;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$observeContentAlignment$callback$1;->$horizontalAlignment:Lcom/yandex/div/json/expressions/Expression;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$observeContentAlignment$callback$1;->$verticalAlignment:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->f(Lcom/yandex/div/core/view2/divs/DivGifImageBinder;Lcom/yandex/div/internal/widget/AspectImageView;Loj3;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-void
.end method
