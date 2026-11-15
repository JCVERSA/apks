.class public final Lcom/yandex/div2/e5;
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

    iput-object p1, p0, Lcom/yandex/div2/e5;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/e5;->b(Lex7;Lcom/yandex/div2/DivTypedValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTypedValue;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTypedValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTypedValue;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$h;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivTypedValue$h;

    iget-object p0, p0, Lcom/yandex/div2/e5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Z9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Liy9;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$h;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$h;->c()Lcom/yandex/div2/StrValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Liy9;->b(Lex7;Lcom/yandex/div2/StrValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/StrValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValue$h;-><init>(Lcom/yandex/div2/StrValue;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$f;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/DivTypedValue$f;

    iget-object p0, p0, Lcom/yandex/div2/e5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->H9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx25;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$f;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$f;->c()Lcom/yandex/div2/IntegerValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lx25;->b(Lex7;Lcom/yandex/div2/IntegerValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/IntegerValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValue$f;-><init>(Lcom/yandex/div2/IntegerValue;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$g;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/yandex/div2/DivTypedValue$g;

    iget-object p0, p0, Lcom/yandex/div2/e5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->N9()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le47;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$g;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$g;->c()Lcom/yandex/div2/NumberValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Le47;->b(Lex7;Lcom/yandex/div2/NumberValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/NumberValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValue$g;-><init>(Lcom/yandex/div2/NumberValue;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$c;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yandex/div2/DivTypedValue$c;

    iget-object p0, p0, Lcom/yandex/div2/e5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->o()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu91;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$c;->c()Lcom/yandex/div2/ColorValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lu91;->b(Lex7;Lcom/yandex/div2/ColorValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/ColorValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValue$c;-><init>(Lcom/yandex/div2/ColorValue;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$b;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/yandex/div2/DivTypedValue$b;

    iget-object p0, p0, Lcom/yandex/div2/e5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->i()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqh0;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$b;->c()Lcom/yandex/div2/BoolValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lqh0;->b(Lex7;Lcom/yandex/div2/BoolValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/BoolValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValue$b;-><init>(Lcom/yandex/div2/BoolValue;)V

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$i;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/yandex/div2/DivTypedValue$i;

    iget-object p0, p0, Lcom/yandex/div2/e5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->fa()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhjb;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$i;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$i;->c()Lcom/yandex/div2/UrlValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lhjb;->b(Lex7;Lcom/yandex/div2/UrlValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/UrlValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValue$i;-><init>(Lcom/yandex/div2/UrlValue;)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$e;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/yandex/div2/DivTypedValue$e;

    iget-object p0, p0, Lcom/yandex/div2/e5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->A()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lob2;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$e;->c()Lcom/yandex/div2/DictValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lob2;->b(Lex7;Lcom/yandex/div2/DictValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DictValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValue$e;-><init>(Lcom/yandex/div2/DictValue;)V

    goto :goto_0

    :cond_6
    instance-of v0, p2, Lcom/yandex/div2/DivTypedValueTemplate$a;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/yandex/div2/DivTypedValue$a;

    iget-object p0, p0, Lcom/yandex/div2/e5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->c()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyh;

    check-cast p2, Lcom/yandex/div2/DivTypedValueTemplate$a;

    invoke-virtual {p2}, Lcom/yandex/div2/DivTypedValueTemplate$a;->c()Lcom/yandex/div2/ArrayValueTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lyh;->b(Lex7;Lcom/yandex/div2/ArrayValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/ArrayValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivTypedValue$a;-><init>(Lcom/yandex/div2/ArrayValue;)V

    :goto_0
    return-object v0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
