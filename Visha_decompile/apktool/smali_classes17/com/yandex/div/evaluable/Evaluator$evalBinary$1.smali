.class final Lcom/yandex/div/evaluable/Evaluator$evalBinary$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/evaluable/Evaluator;->e(Lcom/yandex/div/evaluable/a$a;)Ljava/lang/Object;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $binary:Lcom/yandex/div/evaluable/a$a;

.field final synthetic this$0:Lcom/yandex/div/evaluable/Evaluator;


# direct methods
.method public constructor <init>(Lcom/yandex/div/evaluable/Evaluator;Lcom/yandex/div/evaluable/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/evaluable/Evaluator$evalBinary$1;->this$0:Lcom/yandex/div/evaluable/Evaluator;

    iput-object p2, p0, Lcom/yandex/div/evaluable/Evaluator$evalBinary$1;->$binary:Lcom/yandex/div/evaluable/a$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/evaluable/Evaluator$evalBinary$1;->this$0:Lcom/yandex/div/evaluable/Evaluator;

    iget-object v1, p0, Lcom/yandex/div/evaluable/Evaluator$evalBinary$1;->$binary:Lcom/yandex/div/evaluable/a$a;

    invoke-virtual {v1}, Lcom/yandex/div/evaluable/a$a;->i()Lcom/yandex/div/evaluable/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/evaluable/Evaluator;->d(Lcom/yandex/div/evaluable/a;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/div/evaluable/Evaluator$evalBinary$1;->$binary:Lcom/yandex/div/evaluable/a$a;

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/a$a;->i()Lcom/yandex/div/evaluable/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/evaluable/a;->b()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yandex/div/evaluable/a;->g(Z)V

    return-object v0
.end method
