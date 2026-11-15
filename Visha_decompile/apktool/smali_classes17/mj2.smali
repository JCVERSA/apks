.class public final Lmj2;
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

    iput-object p1, p0, Lmj2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFocusTemplate;

    invoke-virtual {p0, p1, p2}, Lmj2;->e(Lex7;Lcom/yandex/div2/DivFocusTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFocusTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lmj2;->d(Lex7;Lcom/yandex/div2/DivFocusTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFocusTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivFocusTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFocusTemplate;
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

    new-instance v11, Lcom/yandex/div2/DivFocusTemplate;

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/yandex/div2/DivFocusTemplate;->a:Ltp3;

    move-object v7, v3

    goto :goto_0

    :cond_0
    move-object v7, v12

    :goto_0
    iget-object v3, v0, Lmj2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->D1()Lyi5;

    move-result-object v8

    const-string v5, "background"

    move-object v3, v10

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v13

    const-string v3, "readOptionalListField(co\u2026groundJsonTemplateParser)"

    invoke-static {v13, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/yandex/div2/DivFocusTemplate;->b:Ltp3;

    move-object v7, v3

    goto :goto_1

    :cond_1
    move-object v7, v12

    :goto_1
    iget-object v3, v0, Lmj2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->J1()Lyi5;

    move-result-object v8

    const-string v5, "border"

    move-object v3, v10

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v14

    const-string v3, "readOptionalField(contex\u2026BorderJsonTemplateParser)"

    invoke-static {v14, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/yandex/div2/DivFocusTemplate;->c:Ltp3;

    move-object v7, v3

    goto :goto_2

    :cond_2
    move-object v7, v12

    :goto_2
    iget-object v3, v0, Lmj2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->A3()Lyi5;

    move-result-object v8

    const-string v5, "next_focus_ids"

    move-object v3, v10

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v15

    const-string v3, "readOptionalField(contex\u2026cusIdsJsonTemplateParser)"

    invoke-static {v15, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/yandex/div2/DivFocusTemplate;->d:Ltp3;

    move-object v7, v3

    goto :goto_3

    :cond_3
    move-object v7, v12

    :goto_3
    iget-object v3, v0, Lmj2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v8

    const-string v5, "on_blur"

    move-object v3, v10

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v7, "readOptionalListField(co\u2026ActionJsonTemplateParser)"

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/yandex/div2/DivFocusTemplate;->e:Ltp3;

    move-object v12, v1

    :cond_4
    iget-object v0, v0, Lmj2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v0

    const-string v5, "on_focus"

    move-object v3, v10

    move-object/from16 v4, p3

    move v6, v2

    move-object v1, v7

    move-object v7, v12

    move-object v2, v8

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    invoke-static {v8, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v11

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/yandex/div2/DivFocusTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v11
.end method

.method public e(Lex7;Lcom/yandex/div2/DivFocusTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivFocusTemplate;->a:Ltp3;

    iget-object v2, p0, Lmj2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->D1()Lyi5;

    move-result-object v2

    const-string v3, "background"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivFocusTemplate;->b:Ltp3;

    iget-object v2, p0, Lmj2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->J1()Lyi5;

    move-result-object v2

    const-string v3, "border"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivFocusTemplate;->c:Ltp3;

    iget-object v2, p0, Lmj2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->A3()Lyi5;

    move-result-object v2

    const-string v3, "next_focus_ids"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivFocusTemplate;->d:Ltp3;

    iget-object v2, p0, Lmj2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v2

    const-string v3, "on_blur"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object p2, p2, Lcom/yandex/div2/DivFocusTemplate;->e:Ltp3;

    iget-object p0, p0, Lmj2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object p0

    const-string v1, "on_focus"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
