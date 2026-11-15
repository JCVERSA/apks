.class final Lcom/yandex/div/internal/core/DivTreeVisitor$visit$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/internal/core/DivTreeVisitor;->u(Lcom/yandex/div2/Div$p;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Ljava/lang/Object;
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
        "\u0000\u001a\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0008\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00020\u0001\"\u0004\u0008\u0000\u0010\u0000H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "T",
        "",
        "Lkotlin/Triple;",
        "Lcom/yandex/div2/Div;",
        "Lcom/yandex/div/core/view2/a;",
        "Lcom/yandex/div/core/state/DivStatePath;",
        "invoke",
        "()Ljava/util/List;",
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
.field final synthetic $context:Lcom/yandex/div/core/view2/a;

.field final synthetic $data:Lcom/yandex/div2/Div$p;

.field final synthetic $path:Lcom/yandex/div/core/state/DivStatePath;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/Div$p;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$5;->$data:Lcom/yandex/div2/Div$p;

    iput-object p2, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$5;->$context:Lcom/yandex/div/core/view2/a;

    iput-object p3, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$5;->$path:Lcom/yandex/div/core/state/DivStatePath;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$5;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Triple<",
            "Lcom/yandex/div2/Div;",
            "Lcom/yandex/div/core/view2/a;",
            "Lcom/yandex/div/core/state/DivStatePath;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$5;->$data:Lcom/yandex/div2/Div$p;

    invoke-virtual {v0}, Lcom/yandex/div2/Div$p;->c()Lcom/yandex/div2/DivTabs;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/div2/DivTabs;->q:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$5;->$context:Lcom/yandex/div/core/view2/a;

    iget-object p0, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$5;->$path:Lcom/yandex/div/core/state/DivStatePath;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    .line 5
    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v4, Lcom/yandex/div2/DivTabs$Item;

    .line 6
    new-instance v6, Lkotlin/Triple;

    .line 7
    iget-object v4, v4, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    .line 8
    invoke-virtual {v4}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v7

    invoke-static {v7, v3, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->o0(Log2;ILcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v3

    .line 9
    invoke-direct {v6, v4, v1, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    :cond_1
    return-object v2
.end method
