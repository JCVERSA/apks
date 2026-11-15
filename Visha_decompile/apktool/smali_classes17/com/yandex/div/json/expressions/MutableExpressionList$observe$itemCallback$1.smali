.class final Lcom/yandex/div/json/expressions/MutableExpressionList$observe$itemCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/json/expressions/MutableExpressionList;->b(Loj3;Le74;)Lqc2;
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
        "\u0000\u0010\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "T",
        "<anonymous parameter 0>",
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
.field final synthetic $callback:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field final synthetic $resolver:Loj3;

.field final synthetic this$0:Lcom/yandex/div/json/expressions/MutableExpressionList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/div/json/expressions/MutableExpressionList;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le74;Lcom/yandex/div/json/expressions/MutableExpressionList;Loj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            "Lcom/yandex/div/json/expressions/MutableExpressionList;",
            "Loj3;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/json/expressions/MutableExpressionList$observe$itemCallback$1;->$callback:Le74;

    iput-object p2, p0, Lcom/yandex/div/json/expressions/MutableExpressionList$observe$itemCallback$1;->this$0:Lcom/yandex/div/json/expressions/MutableExpressionList;

    iput-object p3, p0, Lcom/yandex/div/json/expressions/MutableExpressionList$observe$itemCallback$1;->$resolver:Loj3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/MutableExpressionList$observe$itemCallback$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/json/expressions/MutableExpressionList$observe$itemCallback$1;->$callback:Le74;

    iget-object v0, p0, Lcom/yandex/div/json/expressions/MutableExpressionList$observe$itemCallback$1;->this$0:Lcom/yandex/div/json/expressions/MutableExpressionList;

    iget-object p0, p0, Lcom/yandex/div/json/expressions/MutableExpressionList$observe$itemCallback$1;->$resolver:Loj3;

    invoke-virtual {v0, p0}, Lcom/yandex/div/json/expressions/MutableExpressionList;->a(Loj3;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
