.class final Lcom/yandex/div/internal/core/DivTreeVisitor$visit$6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/internal/core/DivTreeVisitor;->s(Lcom/yandex/div2/Div$n;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Ljava/lang/Object;
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

.field final synthetic $data:Lcom/yandex/div2/Div$n;

.field final synthetic $path:Lcom/yandex/div/core/state/DivStatePath;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/Div$n;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$6;->$data:Lcom/yandex/div2/Div$n;

    iput-object p2, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$6;->$context:Lcom/yandex/div/core/view2/a;

    iput-object p3, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$6;->$path:Lcom/yandex/div/core/state/DivStatePath;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$6;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .locals 11
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
    iget-object v0, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$6;->$data:Lcom/yandex/div2/Div$n;

    invoke-virtual {v0}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/div2/DivState;->y:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$6;->$context:Lcom/yandex/div/core/view2/a;

    iget-object v2, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$6;->$path:Lcom/yandex/div/core/state/DivStatePath;

    iget-object p0, p0, Lcom/yandex/div/internal/core/DivTreeVisitor$visit$6;->$data:Lcom/yandex/div2/Div$n;

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Lcom/yandex/div2/DivState$State;

    .line 6
    iget-object v5, v4, Lcom/yandex/div2/DivState$State;->c:Lcom/yandex/div2/Div;

    const/4 v6, 0x0

    if-nez v5, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v7, Lkotlin/Triple;

    sget-object v8, Lcom/yandex/div/core/state/DivPathUtils;->a:Lcom/yandex/div/core/state/DivPathUtils;

    invoke-virtual {p0}, Lcom/yandex/div2/Div$n;->c()Lcom/yandex/div2/DivState;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v6, v10, v6}, Lcom/yandex/div/core/state/DivPathUtils;->i(Lcom/yandex/div/core/state/DivPathUtils;Lcom/yandex/div2/DivState;Lc74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lcom/yandex/div2/DivState$State;->d:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Lcom/yandex/div/core/state/DivStatePath;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v4

    invoke-direct {v7, v5, v1, v4}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v7

    :goto_1
    if-eqz v6, :cond_0

    .line 8
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v3
.end method
