.class public final Lag2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luf2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yandex/div2/DivActionTyped;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z
    .locals 0

    const-string p1, "action"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resolver"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p2, Lcom/yandex/div2/DivActionTyped$p;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/yandex/div2/DivActionTyped$p;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$p;->c()Lcom/yandex/div2/DivActionSetStoredValue;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lag2;->c(Lcom/yandex/div2/DivActionSetStoredValue;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Lcom/yandex/div2/DivTypedValue;Ljava/lang/String;Loj3;)Lcom/yandex/div/data/StoredValue;
    .locals 2

    instance-of p0, p1, Lcom/yandex/div2/DivTypedValue$h;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/div/data/StoredValue$g;

    check-cast p1, Lcom/yandex/div2/DivTypedValue$h;

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue$h;->c()Lcom/yandex/div2/StrValue;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/StrValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/yandex/div/data/StoredValue$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    instance-of p0, p1, Lcom/yandex/div2/DivTypedValue$f;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/yandex/div/data/StoredValue$f;

    check-cast p1, Lcom/yandex/div2/DivTypedValue$f;

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue$f;->c()Lcom/yandex/div2/IntegerValue;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/IntegerValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/yandex/div/data/StoredValue$f;-><init>(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_1
    instance-of p0, p1, Lcom/yandex/div2/DivTypedValue$b;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/yandex/div/data/StoredValue$b;

    check-cast p1, Lcom/yandex/div2/DivTypedValue$b;

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue$b;->c()Lcom/yandex/div2/BoolValue;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/BoolValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/yandex/div/data/StoredValue$b;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    instance-of p0, p1, Lcom/yandex/div2/DivTypedValue$g;

    if-eqz p0, :cond_3

    new-instance p0, Lcom/yandex/div/data/StoredValue$e;

    check-cast p1, Lcom/yandex/div2/DivTypedValue$g;

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue$g;->c()Lcom/yandex/div2/NumberValue;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/NumberValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/yandex/div/data/StoredValue$e;-><init>(Ljava/lang/String;D)V

    goto/16 :goto_0

    :cond_3
    instance-of p0, p1, Lcom/yandex/div2/DivTypedValue$c;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/yandex/div/data/StoredValue$c;

    check-cast p1, Lcom/yandex/div2/DivTypedValue$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue$c;->c()Lcom/yandex/div2/ColorValue;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/ColorValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Lk81;->d(I)I

    move-result p1

    invoke-direct {p0, p2, p1, v0}, Lcom/yandex/div/data/StoredValue$c;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_4
    instance-of p0, p1, Lcom/yandex/div2/DivTypedValue$i;

    if-eqz p0, :cond_5

    new-instance p0, Lcom/yandex/div/data/StoredValue$h;

    sget-object v1, Lvib;->b:Lvib$a;

    check-cast p1, Lcom/yandex/div2/DivTypedValue$i;

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue$i;->c()Lcom/yandex/div2/UrlValue;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/UrlValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "value.value.value.evaluate(resolver).toString()"

    invoke-static {p1, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lvib$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, v0}, Lcom/yandex/div/data/StoredValue$h;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_5
    instance-of p0, p1, Lcom/yandex/div2/DivTypedValue$a;

    if-eqz p0, :cond_6

    new-instance p0, Lcom/yandex/div/data/StoredValue$a;

    check-cast p1, Lcom/yandex/div2/DivTypedValue$a;

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue$a;->c()Lcom/yandex/div2/ArrayValue;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/ArrayValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    invoke-direct {p0, p2, p1}, Lcom/yandex/div/data/StoredValue$a;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_6
    instance-of p0, p1, Lcom/yandex/div2/DivTypedValue$e;

    if-eqz p0, :cond_7

    new-instance p0, Lcom/yandex/div/data/StoredValue$d;

    check-cast p1, Lcom/yandex/div2/DivTypedValue$e;

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue$e;->c()Lcom/yandex/div2/DictValue;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DictValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, p2, p1}, Lcom/yandex/div/data/StoredValue$d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final c(Lcom/yandex/div2/DivActionSetStoredValue;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
    .locals 3

    iget-object v0, p1, Lcom/yandex/div2/DivActionSetStoredValue;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/yandex/div2/DivActionSetStoredValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object p1, p1, Lcom/yandex/div2/DivActionSetStoredValue;->c:Lcom/yandex/div2/DivTypedValue;

    invoke-virtual {p0, p1, v0, p3}, Lag2;->b(Lcom/yandex/div2/DivTypedValue;Ljava/lang/String;Loj3;)Lcom/yandex/div/data/StoredValue;

    move-result-object p0

    sget-object p1, Ley9;->a:Ley9;

    invoke-virtual {p1, p0, v1, v2, p2}, Ley9;->c(Lcom/yandex/div/data/StoredValue;JLcom/yandex/div/core/view2/Div2View;)Z

    return-void
.end method
