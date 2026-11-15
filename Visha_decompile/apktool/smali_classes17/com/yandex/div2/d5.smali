.class public final Lcom/yandex/div2/d5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/d5;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTypedValueTemplate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/d5;->e(Lex7;Lcom/yandex/div2/DivTypedValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTypedValueTemplate;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, p2, v0}, Ltb5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "readString(context, data, \"type\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v2

    invoke-interface {v2, v1}, Lkga;->get(Ljava/lang/String;)Lza3;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/div2/DivTypedValueTemplate;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/yandex/div2/DivTypedValueTemplate;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/yandex/div2/DivTypedValueTemplate;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v3, "integer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivTypedValueTemplate$f;

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->G9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw25;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/yandex/div2/DivTypedValueTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_3
    check-cast v4, Lcom/yandex/div2/IntegerValueTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lw25;->d(Lex7;Lcom/yandex/div2/IntegerValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/IntegerValueTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValueTemplate$f;-><init>(Lcom/yandex/div2/IntegerValueTemplate;)V

    return-object v0

    :sswitch_1
    const-string v3, "color"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivTypedValueTemplate$c;

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->n()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt91;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/yandex/div2/DivTypedValueTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_4
    check-cast v4, Lcom/yandex/div2/ColorValueTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lt91;->d(Lex7;Lcom/yandex/div2/ColorValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/ColorValueTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValueTemplate$c;-><init>(Lcom/yandex/div2/ColorValueTemplate;)V

    return-object v0

    :sswitch_2
    const-string v3, "array"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivTypedValueTemplate$a;

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->b()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxh;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/yandex/div2/DivTypedValueTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_5
    check-cast v4, Lcom/yandex/div2/ArrayValueTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lxh;->d(Lex7;Lcom/yandex/div2/ArrayValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/ArrayValueTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValueTemplate$a;-><init>(Lcom/yandex/div2/ArrayValueTemplate;)V

    return-object v0

    :sswitch_3
    const-string v3, "boolean"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivTypedValueTemplate$b;

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->h()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lph0;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/yandex/div2/DivTypedValueTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_6
    check-cast v4, Lcom/yandex/div2/BoolValueTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lph0;->d(Lex7;Lcom/yandex/div2/BoolValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/BoolValueTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValueTemplate$b;-><init>(Lcom/yandex/div2/BoolValueTemplate;)V

    return-object v0

    :sswitch_4
    const-string v3, "dict"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivTypedValueTemplate$e;

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->z()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnb2;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/yandex/div2/DivTypedValueTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_7
    check-cast v4, Lcom/yandex/div2/DictValueTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lnb2;->d(Lex7;Lcom/yandex/div2/DictValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DictValueTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValueTemplate$e;-><init>(Lcom/yandex/div2/DictValueTemplate;)V

    return-object v0

    :sswitch_5
    const-string v3, "url"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivTypedValueTemplate$i;

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->ea()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgjb;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/yandex/div2/DivTypedValueTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_8
    check-cast v4, Lcom/yandex/div2/UrlValueTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lgjb;->d(Lex7;Lcom/yandex/div2/UrlValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/UrlValueTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValueTemplate$i;-><init>(Lcom/yandex/div2/UrlValueTemplate;)V

    return-object v0

    :sswitch_6
    const-string v3, "string"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivTypedValueTemplate$h;

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Y9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhy9;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/yandex/div2/DivTypedValueTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_9
    check-cast v4, Lcom/yandex/div2/StrValueTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lhy9;->d(Lex7;Lcom/yandex/div2/StrValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/StrValueTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValueTemplate$h;-><init>(Lcom/yandex/div2/StrValueTemplate;)V

    return-object v0

    :sswitch_7
    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivTypedValueTemplate$g;

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->M9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld47;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/yandex/div2/DivTypedValueTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_a
    check-cast v4, Lcom/yandex/div2/NumberValueTemplate;

    invoke-virtual {p0, p1, v4, p2}, Ld47;->d(Lex7;Lcom/yandex/div2/NumberValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/NumberValueTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValueTemplate$g;-><init>(Lcom/yandex/div2/NumberValueTemplate;)V

    return-object v0

    :cond_b
    :goto_2
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_7
        -0x352a9fef -> :sswitch_6
        0x1c56f -> :sswitch_5
        0x2f0bb6 -> :sswitch_4
        0x3db6c28 -> :sswitch_3
        0x58c7259 -> :sswitch_2
        0x5a72f63 -> :sswitch_1
        0x74b5813e -> :sswitch_0
    .end sparse-switch
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTypedValueTemplate;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$h;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Y9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhy9;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$h;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$h;->c()Lcom/yandex/div2/StrValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lhy9;->e(Lex7;Lcom/yandex/div2/StrValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$f;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->G9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw25;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$f;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$f;->c()Lcom/yandex/div2/IntegerValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lw25;->e(Lex7;Lcom/yandex/div2/IntegerValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$g;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->M9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld47;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$g;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$g;->c()Lcom/yandex/div2/NumberValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ld47;->e(Lex7;Lcom/yandex/div2/NumberValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$c;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->n()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt91;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$c;->c()Lcom/yandex/div2/ColorValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lt91;->e(Lex7;Lcom/yandex/div2/ColorValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$b;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->h()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lph0;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$b;->c()Lcom/yandex/div2/BoolValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lph0;->e(Lex7;Lcom/yandex/div2/BoolValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$i;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->ea()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgjb;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$i;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$i;->c()Lcom/yandex/div2/UrlValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgjb;->e(Lex7;Lcom/yandex/div2/UrlValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$e;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->z()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnb2;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$e;->c()Lcom/yandex/div2/DictValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnb2;->e(Lex7;Lcom/yandex/div2/DictValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$a;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/yandex/div2/d5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->b()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxh;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$a;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$a;->c()Lcom/yandex/div2/ArrayValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lxh;->e(Lex7;Lcom/yandex/div2/ArrayValueTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
