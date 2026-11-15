.class final Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$2;
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
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "T",
        "Lqnb;",
        "changed",
        "Lzfb;",
        "invoke",
        "(Lqnb;)V",
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
.field final synthetic $callbacks:Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;"
        }
    .end annotation
.end field

.field final synthetic $pendingValue:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$2;->$pendingValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$2;->$callbacks:Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqnb;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$2;->invoke(Lqnb;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lqnb;)V
    .locals 1

    const-string v0, "changed"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lqnb;->c()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$2;->$pendingValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$2;->$pendingValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$bindVariable$2;->$callbacks:Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;

    invoke-interface {p0, p1}, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;->a(Ljava/lang/Object;)V

    return-void
.end method
