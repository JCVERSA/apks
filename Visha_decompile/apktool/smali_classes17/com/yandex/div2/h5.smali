.class public final Lcom/yandex/div2/h5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/h5;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/h5;->b(Lex7;Lcom/yandex/div2/DivVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVariable;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVariable;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$h;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivVariable$h;

    iget-object p0, p0, Lcom/yandex/div2/h5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->ca()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lly9;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$h;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$h;->c()Lcom/yandex/div2/StrVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lly9;->b(Lex7;Lcom/yandex/div2/StrVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/StrVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$h;-><init>(Lcom/yandex/div2/StrVariable;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$g;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/DivVariable$g;

    iget-object p0, p0, Lcom/yandex/div2/h5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Q9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li47;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$g;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$g;->c()Lcom/yandex/div2/NumberVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Li47;->b(Lex7;Lcom/yandex/div2/NumberVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/NumberVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$g;-><init>(Lcom/yandex/div2/NumberVariable;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$f;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/yandex/div2/DivVariable$f;

    iget-object p0, p0, Lcom/yandex/div2/h5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->K9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb35;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$f;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$f;->c()Lcom/yandex/div2/IntegerVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lb35;->b(Lex7;Lcom/yandex/div2/IntegerVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/IntegerVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$f;-><init>(Lcom/yandex/div2/IntegerVariable;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$b;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yandex/div2/DivVariable$b;

    iget-object p0, p0, Lcom/yandex/div2/h5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->l()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lth0;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$b;->c()Lcom/yandex/div2/BoolVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lth0;->b(Lex7;Lcom/yandex/div2/BoolVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/BoolVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$b;-><init>(Lcom/yandex/div2/BoolVariable;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$c;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/yandex/div2/DivVariable$c;

    iget-object p0, p0, Lcom/yandex/div2/h5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->r()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx91;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$c;->c()Lcom/yandex/div2/ColorVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lx91;->b(Lex7;Lcom/yandex/div2/ColorVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/ColorVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$c;-><init>(Lcom/yandex/div2/ColorVariable;)V

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$i;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/yandex/div2/DivVariable$i;

    iget-object p0, p0, Lcom/yandex/div2/h5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->ia()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkjb;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$i;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$i;->c()Lcom/yandex/div2/UrlVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lkjb;->b(Lex7;Lcom/yandex/div2/UrlVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/UrlVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$i;-><init>(Lcom/yandex/div2/UrlVariable;)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$e;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/yandex/div2/DivVariable$e;

    iget-object p0, p0, Lcom/yandex/div2/h5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->D()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrb2;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$e;->c()Lcom/yandex/div2/DictVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lrb2;->b(Lex7;Lcom/yandex/div2/DictVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DictVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$e;-><init>(Lcom/yandex/div2/DictVariable;)V

    goto :goto_0

    :cond_6
    instance-of v0, p2, Lcom/yandex/div2/DivVariableTemplate$a;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/yandex/div2/DivVariable$a;

    iget-object p0, p0, Lcom/yandex/div2/h5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->f()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbi;

    check-cast p2, Lcom/yandex/div2/DivVariableTemplate$a;

    invoke-virtual {p2}, Lcom/yandex/div2/DivVariableTemplate$a;->c()Lcom/yandex/div2/ArrayVariableTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lbi;->b(Lex7;Lcom/yandex/div2/ArrayVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/ArrayVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivVariable$a;-><init>(Lcom/yandex/div2/ArrayVariable;)V

    :goto_0
    return-object v0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
