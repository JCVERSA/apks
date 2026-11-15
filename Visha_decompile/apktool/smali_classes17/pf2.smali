.class public final Lpf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpf2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionSubmitTemplate;

    invoke-virtual {p0, p1, p2}, Lpf2;->e(Lex7;Lcom/yandex/div2/DivActionSubmitTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionSubmitTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lpf2;->d(Lex7;Lcom/yandex/div2/DivActionSubmitTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSubmitTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivActionSubmitTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSubmitTemplate;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    move-object/from16 v9, p3

    invoke-static {v9, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v2

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v10

    new-instance v11, Lcom/yandex/div2/DivActionSubmitTemplate;

    sget-object v6, Lacb;->c:Lzbb;

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/yandex/div2/DivActionSubmitTemplate;->a:Ltp3;

    move-object v8, v3

    goto :goto_0

    :cond_0
    move-object v8, v12

    :goto_0
    const-string v5, "container_id"

    move-object v3, v10

    move-object/from16 v4, p3

    move v7, v2

    invoke-static/range {v3 .. v8}, Lra5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v13

    const-string v3, "readFieldWithExpression(\u2026ide, parent?.containerId)"

    invoke-static {v13, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/yandex/div2/DivActionSubmitTemplate;->b:Ltp3;

    move-object v7, v3

    goto :goto_1

    :cond_1
    move-object v7, v12

    :goto_1
    iget-object v3, v0, Lpf2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v8

    const-string v5, "on_fail_actions"

    move-object v3, v10

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v14

    const-string v15, "readOptionalListField(co\u2026ActionJsonTemplateParser)"

    invoke-static {v14, v15}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/yandex/div2/DivActionSubmitTemplate;->c:Ltp3;

    move-object v7, v3

    goto :goto_2

    :cond_2
    move-object v7, v12

    :goto_2
    iget-object v3, v0, Lpf2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v8

    const-string v5, "on_success_actions"

    move-object v3, v10

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    invoke-static {v8, v15}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/yandex/div2/DivActionSubmitTemplate;->d:Ltp3;

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, v12

    :goto_3
    iget-object v0, v0, Lpf2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->c1()Lyi5;

    move-result-object v0

    const-string v5, "request"

    move-object v3, v10

    move-object/from16 v4, p3

    move v6, v2

    move-object v1, v8

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lra5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v0

    const-string v2, "readField(context, data,\u2026equestJsonTemplateParser)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v13, v14, v1, v0}, Lcom/yandex/div2/DivActionSubmitTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v11
.end method

.method public e(Lex7;Lcom/yandex/div2/DivActionSubmitTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivActionSubmitTemplate;->a:Ltp3;

    const-string v2, "container_id"

    invoke-static {p1, v0, v2, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivActionSubmitTemplate;->b:Ltp3;

    iget-object v2, p0, Lpf2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v2

    const-string v3, "on_fail_actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivActionSubmitTemplate;->c:Ltp3;

    iget-object v2, p0, Lpf2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v2

    const-string v3, "on_success_actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object p2, p2, Lcom/yandex/div2/DivActionSubmitTemplate;->d:Ltp3;

    iget-object p0, p0, Lpf2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->c1()Lyi5;

    move-result-object p0

    const-string v1, "request"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string p0, "type"

    const-string p2, "submit"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
