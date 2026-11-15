.class final Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivContainerBinder;->s(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div/core/state/DivStatePath;Lwc3;)V
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
.field final synthetic $builder:Lcom/yandex/div2/DivCollectionItemBuilder;

.field final synthetic $context:Lcom/yandex/div/core/view2/a;

.field final synthetic $div:Lcom/yandex/div2/DivContainer;

.field final synthetic $errorCollector:Lwc3;

.field final synthetic $path:Lcom/yandex/div/core/state/DivStatePath;

.field final synthetic $this_bindItemBuilder:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivContainerBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivCollectionItemBuilder;Lcom/yandex/div/core/view2/a;Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivContainer;Lcom/yandex/div/core/state/DivStatePath;Lwc3;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$builder:Lcom/yandex/div2/DivCollectionItemBuilder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$context:Lcom/yandex/div/core/view2/a;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$this_bindItemBuilder:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->this$0:Lcom/yandex/div/core/view2/divs/DivContainerBinder;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$div:Lcom/yandex/div2/DivContainer;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$path:Lcom/yandex/div/core/state/DivStatePath;

    iput-object p7, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$errorCollector:Lwc3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 10

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$builder:Lcom/yandex/div2/DivCollectionItemBuilder;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$context:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    invoke-static {p1, v0}, Lbh2;->a(Lcom/yandex/div2/DivCollectionItemBuilder;Loj3;)Ljava/util/List;

    move-result-object v6

    .line 3
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$this_bindItemBuilder:Landroid/view/ViewGroup;

    const-string v0, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivCollectionHolder"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lch2;

    invoke-interface {p1}, Lch2;->getItems()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_0
    move-object v7, p1

    .line 4
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->this$0:Lcom/yandex/div/core/view2/divs/DivContainerBinder;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$this_bindItemBuilder:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$context:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-static {p1, v0, v1, v7, v6}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->h(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Ljava/util/List;)V

    .line 5
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->this$0:Lcom/yandex/div/core/view2/divs/DivContainerBinder;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$this_bindItemBuilder:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$context:Lcom/yandex/div/core/view2/a;

    iget-object v5, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$div:Lcom/yandex/div2/DivContainer;

    iget-object v8, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$path:Lcom/yandex/div/core/state/DivStatePath;

    iget-object v9, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindItemBuilder$1;->$errorCollector:Lwc3;

    move-object v4, v5

    invoke-static/range {v1 .. v9}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->g(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/state/DivStatePath;Lwc3;)V

    return-void
.end method
