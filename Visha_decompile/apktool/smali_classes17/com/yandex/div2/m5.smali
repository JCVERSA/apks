.class public final Lcom/yandex/div2/m5;
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

    iput-object p1, p0, Lcom/yandex/div2/m5;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/m5;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivWrapContentSize;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivWrapContentSize;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/m5;->e(Lex7;Lcom/yandex/div2/DivWrapContentSize;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivWrapContentSize;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivWrapContentSize;

    sget-object v1, Lacb;->a:Lzbb;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v3, "constrained"

    invoke-static {p1, p2, v3, v1, v2}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/m5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->t9()Lyi5;

    move-result-object v2

    const-string v3, "max_size"

    invoke-static {p1, p2, v3, v2}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    iget-object p0, p0, Lcom/yandex/div2/m5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->t9()Lyi5;

    move-result-object p0

    const-string v3, "min_size"

    invoke-static {p1, p2, v3, p0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    invoke-direct {v0, v1, v2, p0}, Lcom/yandex/div2/DivWrapContentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivWrapContentSize;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivWrapContentSize;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "constrained"

    invoke-static {p1, v0, v2, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivWrapContentSize;->b:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    iget-object v2, p0, Lcom/yandex/div2/m5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->t9()Lyi5;

    move-result-object v2

    const-string v3, "max_size"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object p2, p2, Lcom/yandex/div2/DivWrapContentSize;->c:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    iget-object p0, p0, Lcom/yandex/div2/m5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->t9()Lyi5;

    move-result-object p0

    const-string v1, "min_size"

    invoke-static {p1, v0, v1, p2, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string p0, "type"

    const-string p2, "wrap_content"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
