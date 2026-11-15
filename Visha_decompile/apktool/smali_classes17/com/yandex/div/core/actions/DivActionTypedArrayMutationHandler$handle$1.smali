.class final Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler;->b(Lcom/yandex/div2/DivActionArrayInsertValue;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lorg/json/JSONArray;",
        "array",
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
.field final synthetic $index:Ljava/lang/Integer;

.field final synthetic $newValue:Ljava/lang/Object;

.field final synthetic $variableName:Ljava/lang/String;

.field final synthetic $view:Lcom/yandex/div/core/view2/Div2View;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;->$index:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;->$view:Lcom/yandex/div/core/view2/Div2View;

    iput-object p3, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;->$variableName:Ljava/lang/String;

    iput-object p4, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;->$newValue:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;->invoke(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 5

    const-string v0, "array"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;->$index:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    new-instance v0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1$1;

    iget-object p0, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;->$newValue:Ljava/lang/Object;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1$1;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt;->a(Lorg/json/JSONArray;Le74;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 5
    invoke-static {v2, v0}, Lwn8;->q(II)Lu15;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lu15;->m(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1$2;

    iget-object v1, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;->$index:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;->$newValue:Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1$2;-><init>(Ljava/lang/Integer;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandlerKt;->a(Lorg/json/JSONArray;Le74;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;->$view:Lcom/yandex/div/core/view2/Div2View;

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index out of bound ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;->$index:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") for mutation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yandex/div/core/actions/DivActionTypedArrayMutationHandler$handle$1;->$variableName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-direct {v2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method
