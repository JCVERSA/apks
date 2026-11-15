.class final Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;->a(Lcom/yandex/div/core/view2/a;Ljava/lang/String;Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;Lcom/yandex/div/core/state/DivStatePath;)Lqc2;
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
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "T",
        "value",
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

.field final synthetic $divView:Lcom/yandex/div/core/view2/Div2View;

.field final synthetic $pendingValue:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $variableName:Ljava/lang/String;

.field final synthetic this$0:Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;Lcom/yandex/div/core/view2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/yandex/div/core/view2/Div2View;",
            "Ljava/lang/String;",
            "Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;",
            "Lcom/yandex/div/core/view2/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;->$pendingValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iput-object p3, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;->$variableName:Ljava/lang/String;

    iput-object p4, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;->this$0:Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;

    iput-object p5, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;->$bindingContext:Lcom/yandex/div/core/view2/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;->$pendingValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;->$pendingValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    sget-object v0, Lbob;->a:Lbob$a;

    .line 5
    iget-object v1, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    .line 6
    iget-object v2, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;->$variableName:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;->this$0:Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;

    invoke-virtual {v3, p1}, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$1;->$bindingContext:Lcom/yandex/div/core/view2/a;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p0

    .line 9
    invoke-virtual {v0, v1, v2, p1, p0}, Lbob$a;->d(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/lang/String;Loj3;)Lcom/yandex/div/data/VariableMutationException;

    return-void
.end method
