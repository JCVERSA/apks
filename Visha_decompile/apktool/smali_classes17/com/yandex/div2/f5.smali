.class public final Lcom/yandex/div2/f5;
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

    iput-object p1, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/f5;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVariable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivVariable;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/f5;->e(Lex7;Lcom/yandex/div2/DivVariable;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVariable;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, p2, v0}, Ltb5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "readString(context, data, \"type\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "integer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/div2/DivVariable$f;

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->I9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz25;

    invoke-virtual {p0, p1, p2}, Lz25;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/IntegerVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$f;-><init>(Lcom/yandex/div2/IntegerVariable;)V

    return-object v0

    :sswitch_1
    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/yandex/div2/DivVariable$c;

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->p()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv91;

    invoke-virtual {p0, p1, p2}, Lv91;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/ColorVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$c;-><init>(Lcom/yandex/div2/ColorVariable;)V

    return-object v0

    :sswitch_2
    const-string v2, "array"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lcom/yandex/div2/DivVariable$a;

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->d()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzh;

    invoke-virtual {p0, p1, p2}, Lzh;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/ArrayVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$a;-><init>(Lcom/yandex/div2/ArrayVariable;)V

    return-object v0

    :sswitch_3
    const-string v2, "boolean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/yandex/div2/DivVariable$b;

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrh0;

    invoke-virtual {p0, p1, p2}, Lrh0;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/BoolVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$b;-><init>(Lcom/yandex/div2/BoolVariable;)V

    return-object v0

    :sswitch_4
    const-string v2, "dict"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/yandex/div2/DivVariable$e;

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->B()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpb2;

    invoke-virtual {p0, p1, p2}, Lpb2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DictVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$e;-><init>(Lcom/yandex/div2/DictVariable;)V

    return-object v0

    :sswitch_5
    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/yandex/div2/DivVariable$i;

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->ga()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lijb;

    invoke-virtual {p0, p1, p2}, Lijb;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/UrlVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$i;-><init>(Lcom/yandex/div2/UrlVariable;)V

    return-object v0

    :sswitch_6
    const-string v2, "string"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/yandex/div2/DivVariable$h;

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->aa()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljy9;

    invoke-virtual {p0, p1, p2}, Ljy9;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/StrVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$h;-><init>(Lcom/yandex/div2/StrVariable;)V

    return-object v0

    :sswitch_7
    const-string v2, "number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_0
    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lkga;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lza3;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/div2/DivVariableTemplate;

    if-eqz v3, :cond_7

    check-cast v2, Lcom/yandex/div2/DivVariableTemplate;

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_8

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->g9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/h5;

    invoke-virtual {p0, p1, v2, p2}, Lcom/yandex/div2/h5;->b(Lex7;Lcom/yandex/div2/DivVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVariable;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_9
    new-instance v0, Lcom/yandex/div2/DivVariable$g;

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->O9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg47;

    invoke-virtual {p0, p1, p2}, Lg47;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/NumberVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$g;-><init>(Lcom/yandex/div2/NumberVariable;)V

    return-object v0

    nop

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

.method public e(Lex7;Lcom/yandex/div2/DivVariable;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivVariable$h;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->aa()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljy9;

    check-cast p2, Lcom/yandex/div2/DivVariable$h;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariable$h;->c()Lcom/yandex/div2/StrVariable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljy9;->e(Lex7;Lcom/yandex/div2/StrVariable;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivVariable$g;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->O9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg47;

    check-cast p2, Lcom/yandex/div2/DivVariable$g;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariable$g;->c()Lcom/yandex/div2/NumberVariable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lg47;->e(Lex7;Lcom/yandex/div2/NumberVariable;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivVariable$f;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->I9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz25;

    check-cast p2, Lcom/yandex/div2/DivVariable$f;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariable$f;->c()Lcom/yandex/div2/IntegerVariable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lz25;->e(Lex7;Lcom/yandex/div2/IntegerVariable;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivVariable$b;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrh0;

    check-cast p2, Lcom/yandex/div2/DivVariable$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariable$b;->c()Lcom/yandex/div2/BoolVariable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lrh0;->e(Lex7;Lcom/yandex/div2/BoolVariable;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lcom/yandex/div2/DivVariable$c;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->p()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv91;

    check-cast p2, Lcom/yandex/div2/DivVariable$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariable$c;->c()Lcom/yandex/div2/ColorVariable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lv91;->e(Lex7;Lcom/yandex/div2/ColorVariable;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lcom/yandex/div2/DivVariable$i;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->ga()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lijb;

    check-cast p2, Lcom/yandex/div2/DivVariable$i;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariable$i;->c()Lcom/yandex/div2/UrlVariable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lijb;->e(Lex7;Lcom/yandex/div2/UrlVariable;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v0, p2, Lcom/yandex/div2/DivVariable$e;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->B()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpb2;

    check-cast p2, Lcom/yandex/div2/DivVariable$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariable$e;->c()Lcom/yandex/div2/DictVariable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lpb2;->e(Lex7;Lcom/yandex/div2/DictVariable;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of v0, p2, Lcom/yandex/div2/DivVariable$a;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/yandex/div2/f5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->d()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzh;

    check-cast p2, Lcom/yandex/div2/DivVariable$a;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariable$a;->c()Lcom/yandex/div2/ArrayVariable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lzh;->e(Lex7;Lcom/yandex/div2/ArrayVariable;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
