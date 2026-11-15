.class final Lcom/yandex/div/core/view2/errors/ErrorModel$updateOnErrors$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/errors/ErrorModel;-><init>(Lxc3;Lcom/yandex/div/core/view2/Div2View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0010 \n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u00042\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00002\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "",
        "",
        "errors",
        "warnings",
        "Lzfb;",
        "invoke",
        "(Ljava/util/List;Ljava/util/List;)V",
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
.field final synthetic this$0:Lcom/yandex/div/core/view2/errors/ErrorModel;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/errors/ErrorModel;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorModel$updateOnErrors$1;->this$0:Lcom/yandex/div/core/view2/errors/ErrorModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/errors/ErrorModel$updateOnErrors$1;->invoke(Ljava/util/List;Ljava/util/List;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "errors"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "warnings"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel$updateOnErrors$1;->this$0:Lcom/yandex/div/core/view2/errors/ErrorModel;

    invoke-static {v0}, Lcom/yandex/div/core/view2/errors/ErrorModel;->f(Lcom/yandex/div/core/view2/errors/ErrorModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel$updateOnErrors$1;->this$0:Lcom/yandex/div/core/view2/errors/ErrorModel;

    invoke-static {v0}, Lcom/yandex/div/core/view2/errors/ErrorModel;->c(Lcom/yandex/div/core/view2/errors/ErrorModel;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li81;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorModel$updateOnErrors$1;->this$0:Lcom/yandex/div/core/view2/errors/ErrorModel;

    invoke-static {p1}, Lcom/yandex/div/core/view2/errors/ErrorModel;->d(Lcom/yandex/div/core/view2/errors/ErrorModel;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Li81;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorModel$updateOnErrors$1;->this$0:Lcom/yandex/div/core/view2/errors/ErrorModel;

    invoke-static {p1}, Lcom/yandex/div/core/view2/errors/ErrorModel;->e(Lcom/yandex/div/core/view2/errors/ErrorModel;)Lmd3;

    move-result-object v0

    iget-object p2, p0, Lcom/yandex/div/core/view2/errors/ErrorModel$updateOnErrors$1;->this$0:Lcom/yandex/div/core/view2/errors/ErrorModel;

    invoke-static {p2}, Lcom/yandex/div/core/view2/errors/ErrorModel;->c(Lcom/yandex/div/core/view2/errors/ErrorModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    iget-object p2, p0, Lcom/yandex/div/core/view2/errors/ErrorModel$updateOnErrors$1;->this$0:Lcom/yandex/div/core/view2/errors/ErrorModel;

    invoke-static {p2}, Lcom/yandex/div/core/view2/errors/ErrorModel;->c(Lcom/yandex/div/core/view2/errors/ErrorModel;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/yandex/div/core/view2/errors/ErrorModel;->b(Lcom/yandex/div/core/view2/errors/ErrorModel;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 10
    iget-object p2, p0, Lcom/yandex/div/core/view2/errors/ErrorModel$updateOnErrors$1;->this$0:Lcom/yandex/div/core/view2/errors/ErrorModel;

    invoke-static {p2}, Lcom/yandex/div/core/view2/errors/ErrorModel;->d(Lcom/yandex/div/core/view2/errors/ErrorModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel$updateOnErrors$1;->this$0:Lcom/yandex/div/core/view2/errors/ErrorModel;

    invoke-static {p0}, Lcom/yandex/div/core/view2/errors/ErrorModel;->d(Lcom/yandex/div/core/view2/errors/ErrorModel;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/yandex/div/core/view2/errors/ErrorModel;->h(Lcom/yandex/div/core/view2/errors/ErrorModel;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 11
    invoke-static/range {v0 .. v7}, Lmd3;->b(Lmd3;ZIILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lmd3;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yandex/div/core/view2/errors/ErrorModel;->g(Lcom/yandex/div/core/view2/errors/ErrorModel;Lmd3;)V

    :cond_0
    return-void
.end method
