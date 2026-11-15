.class final Lcom/yandex/div/evaluable/Function$matchesArgumentsWithCast$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/evaluable/Function;->l(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "type",
        "Lcom/yandex/div/evaluable/EvaluableType;",
        "declaredType",
        "invoke",
        "(Lcom/yandex/div/evaluable/EvaluableType;Lcom/yandex/div/evaluable/EvaluableType;)Ljava/lang/Boolean;"
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
.field final synthetic this$0:Lcom/yandex/div/evaluable/Function;


# direct methods
.method public constructor <init>(Lcom/yandex/div/evaluable/Function;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/evaluable/Function$matchesArgumentsWithCast$1;->this$0:Lcom/yandex/div/evaluable/Function;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/yandex/div/evaluable/EvaluableType;Lcom/yandex/div/evaluable/EvaluableType;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "declaredType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p2, :cond_1

    .line 2
    iget-object p0, p0, Lcom/yandex/div/evaluable/Function$matchesArgumentsWithCast$1;->this$0:Lcom/yandex/div/evaluable/Function;

    invoke-static {p0, p1, p2}, Lcom/yandex/div/evaluable/Function;->a(Lcom/yandex/div/evaluable/Function;Lcom/yandex/div/evaluable/EvaluableType;Lcom/yandex/div/evaluable/EvaluableType;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/div/evaluable/EvaluableType;

    check-cast p2, Lcom/yandex/div/evaluable/EvaluableType;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/evaluable/Function$matchesArgumentsWithCast$1;->invoke(Lcom/yandex/div/evaluable/EvaluableType;Lcom/yandex/div/evaluable/EvaluableType;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
