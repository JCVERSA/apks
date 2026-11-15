.class public final Lcom/yandex/div2/g5;
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

    iput-object p1, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/g5;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVariableTemplate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/g5;->e(Lex7;Lcom/yandex/div2/DivVariableTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVariableTemplate;
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

    instance-of v3, v2, Lcom/yandex/div2/DivVariableTemplate;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/yandex/div2/DivVariableTemplate;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/yandex/div2/DivVariableTemplate;->a()Ljava/lang/String;

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

    new-instance v0, Lcom/yandex/div2/DivVariableTemplate$f;

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La35;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/yandex/div2/DivVariableTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_3
    check-cast v4, Lcom/yandex/div2/IntegerVariableTemplate;

    invoke-virtual {p0, p1, v4, p2}, La35;->d(Lex7;Lcom/yandex/div2/IntegerVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/IntegerVariableTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariableTemplate$f;-><init>(Lcom/yandex/div2/IntegerVariableTemplate;)V

    return-object v0

    :sswitch_1
    const-string v3, "color"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivVariableTemplate$c;

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->q()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw91;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/yandex/div2/DivVariableTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_4
    check-cast v4, Lcom/yandex/div2/ColorVariableTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lw91;->d(Lex7;Lcom/yandex/div2/ColorVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/ColorVariableTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariableTemplate$c;-><init>(Lcom/yandex/div2/ColorVariableTemplate;)V

    return-object v0

    :sswitch_2
    const-string v3, "array"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivVariableTemplate$a;

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->e()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lai;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/yandex/div2/DivVariableTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_5
    check-cast v4, Lcom/yandex/div2/ArrayVariableTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lai;->d(Lex7;Lcom/yandex/div2/ArrayVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/ArrayVariableTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariableTemplate$a;-><init>(Lcom/yandex/div2/ArrayVariableTemplate;)V

    return-object v0

    :sswitch_3
    const-string v3, "boolean"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivVariableTemplate$b;

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->k()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsh0;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/yandex/div2/DivVariableTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_6
    check-cast v4, Lcom/yandex/div2/BoolVariableTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lsh0;->d(Lex7;Lcom/yandex/div2/BoolVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/BoolVariableTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariableTemplate$b;-><init>(Lcom/yandex/div2/BoolVariableTemplate;)V

    return-object v0

    :sswitch_4
    const-string v3, "dict"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivVariableTemplate$e;

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->C()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqb2;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/yandex/div2/DivVariableTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_7
    check-cast v4, Lcom/yandex/div2/DictVariableTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lqb2;->d(Lex7;Lcom/yandex/div2/DictVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DictVariableTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariableTemplate$e;-><init>(Lcom/yandex/div2/DictVariableTemplate;)V

    return-object v0

    :sswitch_5
    const-string v3, "url"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivVariableTemplate$i;

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->ha()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljjb;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/yandex/div2/DivVariableTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_8
    check-cast v4, Lcom/yandex/div2/UrlVariableTemplate;

    invoke-virtual {p0, p1, v4, p2}, Ljjb;->d(Lex7;Lcom/yandex/div2/UrlVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/UrlVariableTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariableTemplate$i;-><init>(Lcom/yandex/div2/UrlVariableTemplate;)V

    return-object v0

    :sswitch_6
    const-string v3, "string"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivVariableTemplate$h;

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->ba()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lky9;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/yandex/div2/DivVariableTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_9
    check-cast v4, Lcom/yandex/div2/StrVariableTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lky9;->d(Lex7;Lcom/yandex/div2/StrVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/StrVariableTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariableTemplate$h;-><init>(Lcom/yandex/div2/StrVariableTemplate;)V

    return-object v0

    :sswitch_7
    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Lcom/yandex/div2/DivVariableTemplate$g;

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->P9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh47;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/yandex/div2/DivVariableTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_a
    check-cast v4, Lcom/yandex/div2/NumberVariableTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lh47;->d(Lex7;Lcom/yandex/div2/NumberVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/NumberVariableTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariableTemplate$g;-><init>(Lcom/yandex/div2/NumberVariableTemplate;)V

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

.method public e(Lex7;Lcom/yandex/div2/DivVariableTemplate;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$h;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->ba()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lky9;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$h;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$h;->c()Lcom/yandex/div2/StrVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lky9;->e(Lex7;Lcom/yandex/div2/StrVariableTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$g;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->P9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh47;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$g;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$g;->c()Lcom/yandex/div2/NumberVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lh47;->e(Lex7;Lcom/yandex/div2/NumberVariableTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$f;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La35;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$f;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$f;->c()Lcom/yandex/div2/IntegerVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, La35;->e(Lex7;Lcom/yandex/div2/IntegerVariableTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$b;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->k()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsh0;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$b;->c()Lcom/yandex/div2/BoolVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsh0;->e(Lex7;Lcom/yandex/div2/BoolVariableTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$c;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->q()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw91;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$c;->c()Lcom/yandex/div2/ColorVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lw91;->e(Lex7;Lcom/yandex/div2/ColorVariableTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$i;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->ha()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljjb;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$i;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$i;->c()Lcom/yandex/div2/UrlVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljjb;->e(Lex7;Lcom/yandex/div2/UrlVariableTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$e;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->C()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqb2;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$e;->c()Lcom/yandex/div2/DictVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lqb2;->e(Lex7;Lcom/yandex/div2/DictVariableTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$a;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/yandex/div2/g5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->e()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lai;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$a;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$a;->c()Lcom/yandex/div2/ArrayVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lai;->e(Lex7;Lcom/yandex/div2/ArrayVariableTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
