.class final Lcom/yandex/div/evaluable/LocalFunctionProvider$getMethod$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/evaluable/LocalFunctionProvider;->a(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/div/evaluable/Function;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lcom/yandex/div/evaluable/Function;",
        "Lcom/yandex/div/evaluable/Function$c;",
        "invoke",
        "(Lcom/yandex/div/evaluable/Function;)Lcom/yandex/div/evaluable/Function$c;",
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
.field final synthetic $args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/div/evaluable/EvaluableType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/div/evaluable/EvaluableType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/evaluable/LocalFunctionProvider$getMethod$1;->$args:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/yandex/div/evaluable/Function;)Lcom/yandex/div/evaluable/Function$c;
    .locals 1

    const-string v0, "$this$findFunction"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/yandex/div/evaluable/LocalFunctionProvider$getMethod$1;->$args:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/yandex/div/evaluable/Function;->k(Ljava/util/List;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/yandex/div/evaluable/Function;

    invoke-virtual {p0, p1}, Lcom/yandex/div/evaluable/LocalFunctionProvider$getMethod$1;->invoke(Lcom/yandex/div/evaluable/Function;)Lcom/yandex/div/evaluable/Function$c;

    move-result-object p0

    return-object p0
.end method
