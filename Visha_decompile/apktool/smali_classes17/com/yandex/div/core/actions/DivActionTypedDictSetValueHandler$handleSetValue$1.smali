.class final Lcom/yandex/div/core/actions/DivActionTypedDictSetValueHandler$handleSetValue$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/actions/DivActionTypedDictSetValueHandler;->b(Lcom/yandex/div2/DivActionDictSetValue;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lqnb;",
        "variable",
        "invoke",
        "(Lqnb;)Lqnb;",
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
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $newValue:Ljava/lang/Object;

.field final synthetic $view:Lcom/yandex/div/core/view2/Div2View;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/actions/DivActionTypedDictSetValueHandler$handleSetValue$1;->$view:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Lcom/yandex/div/core/actions/DivActionTypedDictSetValueHandler$handleSetValue$1;->$newValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/yandex/div/core/actions/DivActionTypedDictSetValueHandler$handleSetValue$1;->$key:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqnb;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/actions/DivActionTypedDictSetValueHandler$handleSetValue$1;->invoke(Lqnb;)Lqnb;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lqnb;)Lqnb;
    .locals 3

    const-string v0, "variable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lqnb$d;

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/div/core/actions/DivActionTypedDictSetValueHandler$handleSetValue$1;->$view:Lcom/yandex/div/core/view2/Div2View;

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dict_set_value action requires dict variable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p0, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lqnb;->c()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 7
    iget-object p0, p0, Lcom/yandex/div/core/actions/DivActionTypedDictSetValueHandler$handleSetValue$1;->$view:Lcom/yandex/div/core/view2/Div2View;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid variable value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    return-object p1

    .line 8
    :cond_2
    invoke-static {v0}, Lsf2;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/yandex/div/core/actions/DivActionTypedDictSetValueHandler$handleSetValue$1;->$newValue:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 10
    iget-object p0, p0, Lcom/yandex/div/core/actions/DivActionTypedDictSetValueHandler$handleSetValue$1;->$key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-object p0, p1

    check-cast p0, Lqnb$d;

    invoke-virtual {p0, v0}, Lqnb$d;->t(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 12
    :cond_3
    move-object v2, p1

    check-cast v2, Lqnb$d;

    iget-object p0, p0, Lcom/yandex/div/core/actions/DivActionTypedDictSetValueHandler$handleSetValue$1;->$key:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "newDict.put(key, newValue)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lqnb$d;->t(Lorg/json/JSONObject;)V

    :goto_1
    return-object p1
.end method
