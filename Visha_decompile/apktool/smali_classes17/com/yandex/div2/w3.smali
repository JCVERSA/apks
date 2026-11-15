.class public final Lcom/yandex/div2/w3;
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

    iput-object p1, p0, Lcom/yandex/div2/w3;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivStateTemplate$StateTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/w3;->e(Lex7;Lcom/yandex/div2/DivStateTemplate$StateTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivStateTemplate$StateTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/w3;->d(Lex7;Lcom/yandex/div2/DivStateTemplate$StateTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStateTemplate$StateTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivStateTemplate$StateTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStateTemplate$StateTemplate;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-static {v8, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v9

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v10

    new-instance v11, Lcom/yandex/div2/DivStateTemplate$StateTemplate;

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->a:Ltp3;

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v12

    :goto_0
    iget-object v2, v0, Lcom/yandex/div2/w3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->o1()Lyi5;

    move-result-object v7

    const-string v4, "animation_in"

    move-object v2, v10

    move-object/from16 v3, p3

    move v5, v9

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v13

    const-string v14, "readOptionalField(contex\u2026mationJsonTemplateParser)"

    invoke-static {v13, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->b:Ltp3;

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v12

    :goto_1
    iget-object v2, v0, Lcom/yandex/div2/w3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->o1()Lyi5;

    move-result-object v7

    const-string v4, "animation_out"

    move-object v2, v10

    move-object/from16 v3, p3

    move v5, v9

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v15

    invoke-static {v15, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->c:Ltp3;

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, v12

    :goto_2
    iget-object v2, v0, Lcom/yandex/div2/w3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->K4()Lyi5;

    move-result-object v7

    const-string v4, "div"

    move-object v2, v10

    move-object/from16 v3, p3

    move v5, v9

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v6

    const-string v2, "readOptionalField(contex\u2026nt.divJsonTemplateParser)"

    invoke-static {v6, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->d:Ltp3;

    goto :goto_3

    :cond_3
    move-object v2, v12

    :goto_3
    const-string v3, "state_id"

    invoke-static {v10, v8, v3, v9, v2}, Lra5;->c(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readField(context, data,\u2026verride, parent?.stateId)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->e:Ltp3;

    move-object v4, v1

    goto :goto_4

    :cond_4
    move-object v4, v12

    :goto_4
    iget-object v0, v0, Lcom/yandex/div2/w3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v5

    const-string v2, "swipe_out_actions"

    move-object v0, v10

    move-object/from16 v1, p3

    move v3, v9

    invoke-static/range {v0 .. v5}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v5

    const-string v0, "readOptionalListField(co\u2026ActionJsonTemplateParser)"

    invoke-static {v5, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v11

    move-object v1, v13

    move-object v2, v15

    move-object v3, v6

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div2/DivStateTemplate$StateTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v11
.end method

.method public e(Lex7;Lcom/yandex/div2/DivStateTemplate$StateTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/w3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->o1()Lyi5;

    move-result-object v2

    const-string v3, "animation_in"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->b:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/w3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->o1()Lyi5;

    move-result-object v2

    const-string v3, "animation_out"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->c:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/w3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->K4()Lyi5;

    move-result-object v2

    const-string v3, "div"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "state_id"

    iget-object v2, p2, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->d:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p2, p2, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->e:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/w3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object p0

    const-string v1, "swipe_out_actions"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
