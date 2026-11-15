.class final Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler$handleSetVariable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler;->b(Lcom/yandex/div2/DivActionTyped$q;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
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
.field final synthetic $newValue:Ljava/lang/Object;

.field final synthetic $variableName:Ljava/lang/String;

.field final synthetic $view:Lcom/yandex/div/core/view2/Div2View;

.field final synthetic this$0:Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler;Ljava/lang/Object;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler$handleSetVariable$1;->this$0:Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler;

    iput-object p2, p0, Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler$handleSetVariable$1;->$newValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler$handleSetVariable$1;->$view:Lcom/yandex/div/core/view2/Div2View;

    iput-object p4, p0, Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler$handleSetVariable$1;->$variableName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqnb;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler$handleSetVariable$1;->invoke(Lqnb;)Lqnb;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lqnb;)Lqnb;
    .locals 13

    const-string v0, "variable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler$handleSetVariable$1;->$newValue:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler$handleSetVariable$1;->$view:Lcom/yandex/div/core/view2/Div2View;

    iget-object p0, p0, Lcom/yandex/div/core/actions/DivActionTypedSetVariableHandler$handleSetVariable$1;->$variableName:Ljava/lang/String;

    .line 3
    instance-of v2, p1, Lqnb$a;

    const-string v3, ") to variable "

    const-string v4, "Trying to set value with invalid type ("

    const-string v5, "toLowerCase(...)"

    const-string v6, "newValue.javaClass.simpleName"

    const-string v7, "array"

    const-string v8, "dict"

    const-string v9, "number"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_6

    .line 4
    instance-of v2, v0, Lorg/json/JSONArray;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v11, v0

    :goto_0
    check-cast v11, Lorg/json/JSONArray;

    if-nez v11, :cond_5

    .line 5
    instance-of v12, v0, Ljava/lang/Integer;

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    instance-of v10, v0, Ljava/lang/Double;

    :goto_1
    if-eqz v10, :cond_2

    move-object v7, v9

    goto :goto_2

    .line 6
    :cond_2
    instance-of v9, v0, Lorg/json/JSONObject;

    if-eqz v9, :cond_3

    move-object v7, v8

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    :cond_5
    if-eqz v11, :cond_37

    .line 11
    move-object p0, p1

    check-cast p0, Lqnb$a;

    invoke-virtual {p0, v11}, Lqnb$a;->t(Lorg/json/JSONArray;)V

    goto/16 :goto_18

    .line 12
    :cond_6
    instance-of v2, p1, Lqnb$b;

    if-eqz v2, :cond_d

    .line 13
    instance-of v2, v0, Ljava/lang/Boolean;

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v11, v0

    :goto_3
    check-cast v11, Ljava/lang/Boolean;

    if-nez v11, :cond_c

    .line 14
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    instance-of v10, v0, Ljava/lang/Double;

    :goto_4
    if-eqz v10, :cond_9

    move-object v7, v9

    goto :goto_5

    .line 15
    :cond_9
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_a

    move-object v7, v8

    goto :goto_5

    .line 16
    :cond_a
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_b

    goto :goto_5

    .line 17
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :goto_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    :cond_c
    if-eqz v11, :cond_37

    .line 21
    move-object p0, p1

    check-cast p0, Lqnb$b;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lqnb$b;->t(Z)V

    goto/16 :goto_18

    .line 22
    :cond_d
    instance-of v2, p1, Lqnb$c;

    if-eqz v2, :cond_14

    .line 23
    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_e

    goto :goto_6

    :cond_e
    move-object v11, v0

    :goto_6
    check-cast v11, Ljava/lang/Integer;

    if-nez v11, :cond_13

    if-eqz v2, :cond_f

    goto :goto_7

    .line 24
    :cond_f
    instance-of v10, v0, Ljava/lang/Double;

    :goto_7
    if-eqz v10, :cond_10

    move-object v7, v9

    goto :goto_8

    .line 25
    :cond_10
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_11

    move-object v7, v8

    goto :goto_8

    .line 26
    :cond_11
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_12

    goto :goto_8

    .line 27
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    :goto_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    :cond_13
    if-eqz v11, :cond_37

    .line 31
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lk81;->d(I)I

    move-result p0

    move-object v0, p1

    check-cast v0, Lqnb$c;

    invoke-virtual {v0, p0}, Lqnb$c;->t(I)V

    goto/16 :goto_18

    .line 32
    :cond_14
    instance-of v2, p1, Lqnb$d;

    if-eqz v2, :cond_1b

    .line 33
    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_15

    goto :goto_9

    :cond_15
    move-object v11, v0

    :goto_9
    check-cast v11, Lorg/json/JSONObject;

    if-nez v11, :cond_1a

    .line 34
    instance-of v12, v0, Ljava/lang/Integer;

    if-eqz v12, :cond_16

    goto :goto_a

    :cond_16
    instance-of v10, v0, Ljava/lang/Double;

    :goto_a
    if-eqz v10, :cond_17

    move-object v7, v9

    goto :goto_b

    :cond_17
    if-eqz v2, :cond_18

    move-object v7, v8

    goto :goto_b

    .line 35
    :cond_18
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_19

    goto :goto_b

    .line 36
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    :goto_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    :cond_1a
    if-eqz v11, :cond_37

    .line 40
    move-object p0, p1

    check-cast p0, Lqnb$d;

    invoke-virtual {p0, v11}, Lqnb$d;->t(Lorg/json/JSONObject;)V

    goto/16 :goto_18

    .line 41
    :cond_1b
    instance-of v2, p1, Lqnb$e;

    if-eqz v2, :cond_22

    .line 42
    instance-of v2, v0, Ljava/lang/Double;

    if-nez v2, :cond_1c

    goto :goto_c

    :cond_1c
    move-object v11, v0

    :goto_c
    check-cast v11, Ljava/lang/Double;

    if-nez v11, :cond_21

    .line 43
    instance-of v12, v0, Ljava/lang/Integer;

    if-eqz v12, :cond_1d

    goto :goto_d

    :cond_1d
    move v10, v2

    :goto_d
    if-eqz v10, :cond_1e

    move-object v7, v9

    goto :goto_e

    .line 44
    :cond_1e
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_1f

    move-object v7, v8

    goto :goto_e

    .line 45
    :cond_1f
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_20

    goto :goto_e

    .line 46
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    :goto_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    :cond_21
    if-eqz v11, :cond_37

    .line 50
    move-object p0, p1

    check-cast p0, Lqnb$e;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lqnb$e;->t(D)V

    goto/16 :goto_18

    .line 51
    :cond_22
    instance-of v2, p1, Lqnb$f;

    if-eqz v2, :cond_29

    .line 52
    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_23

    goto :goto_f

    :cond_23
    move-object v11, v0

    :goto_f
    check-cast v11, Ljava/lang/Long;

    if-nez v11, :cond_28

    .line 53
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_24

    goto :goto_10

    :cond_24
    instance-of v10, v0, Ljava/lang/Double;

    :goto_10
    if-eqz v10, :cond_25

    move-object v7, v9

    goto :goto_11

    .line 54
    :cond_25
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_26

    move-object v7, v8

    goto :goto_11

    .line 55
    :cond_26
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_27

    goto :goto_11

    .line 56
    :cond_27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    :goto_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    :cond_28
    if-eqz v11, :cond_37

    .line 60
    move-object p0, p1

    check-cast p0, Lqnb$f;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lqnb$f;->t(J)V

    goto/16 :goto_18

    .line 61
    :cond_29
    instance-of v2, p1, Lqnb$g;

    if-eqz v2, :cond_30

    .line 62
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_2a

    goto :goto_12

    :cond_2a
    move-object v11, v0

    :goto_12
    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_2f

    .line 63
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2b

    goto :goto_13

    :cond_2b
    instance-of v10, v0, Ljava/lang/Double;

    :goto_13
    if-eqz v10, :cond_2c

    move-object v7, v9

    goto :goto_14

    .line 64
    :cond_2c
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_2d

    move-object v7, v8

    goto :goto_14

    .line 65
    :cond_2d
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_2e

    goto :goto_14

    .line 66
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    :goto_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    :cond_2f
    if-eqz v11, :cond_37

    .line 70
    invoke-virtual {p1, v11}, Lqnb;->n(Ljava/lang/String;)V

    goto :goto_18

    .line 71
    :cond_30
    instance-of v2, p1, Lqnb$h;

    if-eqz v2, :cond_37

    .line 72
    instance-of v2, v0, Landroid/net/Uri;

    if-nez v2, :cond_31

    goto :goto_15

    :cond_31
    move-object v11, v0

    :goto_15
    check-cast v11, Landroid/net/Uri;

    if-nez v11, :cond_36

    .line 73
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_32

    goto :goto_16

    :cond_32
    instance-of v10, v0, Ljava/lang/Double;

    :goto_16
    if-eqz v10, :cond_33

    move-object v7, v9

    goto :goto_17

    .line 74
    :cond_33
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_34

    move-object v7, v8

    goto :goto_17

    .line 75
    :cond_34
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_35

    goto :goto_17

    .line 76
    :cond_35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :goto_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    :cond_36
    if-eqz v11, :cond_37

    .line 80
    move-object p0, p1

    check-cast p0, Lqnb$h;

    invoke-virtual {p0, v11}, Lqnb$h;->t(Landroid/net/Uri;)V

    :cond_37
    :goto_18
    return-object p1
.end method
