.class public final Llf2;
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

    iput-object p1, p0, Llf2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionSetVariableTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Llf2;->b(Lex7;Lcom/yandex/div2/DivActionSetVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSetVariable;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivActionSetVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSetVariable;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivActionSetVariable;

    iget-object v2, p2, Lcom/yandex/div2/DivActionSetVariableTemplate;->a:Ltp3;

    iget-object v1, p0, Llf2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->d9()Lyi5;

    move-result-object v5

    iget-object p0, p0, Llf2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->b9()Lyi5;

    move-result-object v6

    const-string v4, "value"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->d(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "resolve(context, templat\u2026pedValueJsonEntityParser)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/yandex/div2/DivTypedValue;

    iget-object p2, p2, Lcom/yandex/div2/DivActionSetVariableTemplate;->b:Ltp3;

    const-string v1, "variable_name"

    sget-object v2, Lacb;->c:Lzbb;

    invoke-static {p1, p2, p3, v1, v2}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    const-string p2, "resolveExpression(contex\u2026ame\", TYPE_HELPER_STRING)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/yandex/div2/DivActionSetVariable;-><init>(Lcom/yandex/div2/DivTypedValue;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method
