.class final Lcom/yandex/div/core/expression/local/RuntimeStore$onCreateCallback$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/expression/local/RuntimeStore;-><init>(Lcom/yandex/div/evaluable/Evaluator;Lwc3;Lgd2;Lcom/yandex/div/core/view2/divs/DivActionBinder;)V
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;",
        "invoke",
        "()Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;",
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
.field final synthetic this$0:Lcom/yandex/div/core/expression/local/RuntimeStore;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/expression/local/RuntimeStore;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/expression/local/RuntimeStore$onCreateCallback$2;->this$0:Lcom/yandex/div/core/expression/local/RuntimeStore;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/expression/local/RuntimeStore;Lcom/yandex/div/core/expression/ExpressionResolverImpl;Lsnb;Lm84;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/div/core/expression/local/RuntimeStore$onCreateCallback$2;->b(Lcom/yandex/div/core/expression/local/RuntimeStore;Lcom/yandex/div/core/expression/ExpressionResolverImpl;Lsnb;Lm84;)V

    return-void
.end method

.method public static final b(Lcom/yandex/div/core/expression/local/RuntimeStore;Lcom/yandex/div/core/expression/ExpressionResolverImpl;Lsnb;Lm84;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lvj3;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lvj3;-><init>(Lcom/yandex/div/core/expression/ExpressionResolverImpl;Lsnb;Lx9b;Lm84;Lcom/yandex/div/core/expression/local/RuntimeStore;)V

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/expression/local/RuntimeStore;->m(Lvj3;)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeStore$onCreateCallback$2;->this$0:Lcom/yandex/div/core/expression/local/RuntimeStore;

    new-instance v0, Lcom/yandex/div/core/expression/local/a;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/expression/local/a;-><init>(Lcom/yandex/div/core/expression/local/RuntimeStore;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/expression/local/RuntimeStore$onCreateCallback$2;->invoke()Lcom/yandex/div/core/expression/ExpressionResolverImpl$a;

    move-result-object p0

    return-object p0
.end method
