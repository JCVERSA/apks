.class final Lcom/yandex/div/core/expression/ExpressionResolverImpl$subscribeOnVariables$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/expression/ExpressionResolverImpl;->o()V
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lqnb;",
        "v",
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
.field final synthetic this$0:Lcom/yandex/div/core/expression/ExpressionResolverImpl;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/expression/ExpressionResolverImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl$subscribeOnVariables$1;->this$0:Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqnb;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/ExpressionResolverImpl$subscribeOnVariables$1;->invoke(Lqnb;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lqnb;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl$subscribeOnVariables$1;->this$0:Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    invoke-static {v0}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->g(Lcom/yandex/div/core/expression/ExpressionResolverImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lqnb;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl$subscribeOnVariables$1;->this$0:Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {p0}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->e(Lcom/yandex/div/core/expression/ExpressionResolverImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p0}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->f(Lcom/yandex/div/core/expression/ExpressionResolverImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqd7;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc74;

    .line 8
    invoke-interface {v1}, Lc74;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method
