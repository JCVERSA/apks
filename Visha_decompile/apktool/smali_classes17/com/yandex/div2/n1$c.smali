.class public final Lcom/yandex/div2/n1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/n1$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFunctionTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/n1$c;->e(Lex7;Lcom/yandex/div2/DivFunctionTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFunctionTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/n1$c;->d(Lex7;Lcom/yandex/div2/DivFunctionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFunctionTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivFunctionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFunctionTemplate;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->c()Z

    move-result v0

    invoke-static {p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object p1

    new-instance v7, Lcom/yandex/div2/DivFunctionTemplate;

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/yandex/div2/DivFunctionTemplate;->a:Ltp3;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v8

    :goto_0
    iget-object p0, p0, Lcom/yandex/div2/n1$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->D3()Lyi5;

    move-result-object v6

    const-string v3, "arguments"

    move-object v1, p1

    move-object v2, p3

    move v4, v0

    invoke-static/range {v1 .. v6}, Lra5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object p0

    const-string v1, "readListField(context, d\u2026gumentJsonTemplateParser)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/yandex/div2/DivFunctionTemplate;->b:Ltp3;

    goto :goto_1

    :cond_1
    move-object v1, v8

    :goto_1
    const-string v2, "body"

    invoke-static {p1, p3, v2, v0, v1}, Lra5;->c(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v9

    const-string v1, "readField(context, data,\u2026owOverride, parent?.body)"

    invoke-static {v9, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/yandex/div2/DivFunctionTemplate;->c:Ltp3;

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, v8

    :goto_2
    sget-object v6, Lcom/yandex/div2/n1;->b:Lpnb;

    const-string v3, "name"

    move-object v1, p1

    move-object v2, p3

    move v4, v0

    invoke-static/range {v1 .. v6}, Lra5;->g(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lpnb;)Ltp3;

    move-result-object v10

    const-string v1, "readField(context, data,\u2026nt?.name, NAME_VALIDATOR)"

    invoke-static {v10, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/yandex/div2/DivFunctionTemplate;->d:Ltp3;

    move-object v5, p2

    goto :goto_3

    :cond_3
    move-object v5, v8

    :goto_3
    sget-object v6, Lcom/yandex/div2/DivEvaluableType;->FROM_STRING:Le74;

    const-string v3, "return_type"

    move-object v1, p1

    move-object v2, p3

    move v4, v0

    invoke-static/range {v1 .. v6}, Lra5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Le74;)Ltp3;

    move-result-object p1

    const-string p2, "readField(context, data,\u2026valuableType.FROM_STRING)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, p0, v9, v10, p1}, Lcom/yandex/div2/DivFunctionTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v7
.end method

.method public e(Lex7;Lcom/yandex/div2/DivFunctionTemplate;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivFunctionTemplate;->a:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/n1$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->D3()Lyi5;

    move-result-object p0

    const-string v2, "arguments"

    invoke-static {p1, v0, v2, v1, p0}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string p0, "body"

    iget-object v1, p2, Lcom/yandex/div2/DivFunctionTemplate;->b:Ltp3;

    invoke-static {p1, v0, p0, v1}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string p0, "name"

    iget-object v1, p2, Lcom/yandex/div2/DivFunctionTemplate;->c:Ltp3;

    invoke-static {p1, v0, p0, v1}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivFunctionTemplate;->d:Ltp3;

    sget-object p2, Lcom/yandex/div2/DivEvaluableType;->TO_STRING:Le74;

    const-string v1, "return_type"

    invoke-static {p1, v0, v1, p0, p2}, Lra5;->H(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    return-object v0
.end method
