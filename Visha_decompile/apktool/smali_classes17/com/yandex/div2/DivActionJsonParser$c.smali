.class public final Lcom/yandex/div2/DivActionJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivActionJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivActionJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivActionTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivActionJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivActionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivActionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionTemplate;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-static {v9, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v10

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v11

    new-instance v24, Lcom/yandex/div2/DivActionTemplate;

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/yandex/div2/DivActionTemplate;->a:Ltp3;

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v12

    :goto_0
    iget-object v2, v0, Lcom/yandex/div2/DivActionJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Q2()Lyi5;

    move-result-object v7

    const-string v4, "download_callbacks"

    move-object v2, v11

    move-object/from16 v3, p3

    move v5, v10

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v13

    const-string v2, "readOptionalField(contex\u2026lbacksJsonTemplateParser)"

    invoke-static {v13, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->a:Lzbb;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/yandex/div2/DivActionTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v12

    :goto_1
    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v4, "is_enabled"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v10

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v14

    const-string v2, "readOptionalFieldWithExp\u2026sEnabled, ANY_TO_BOOLEAN)"

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->c:Lzbb;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/yandex/div2/DivActionTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v12

    :goto_2
    const-string v4, "log_id"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v10

    invoke-static/range {v2 .. v7}, Lra5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v15

    const-string v2, "readFieldWithExpression(\u2026wOverride, parent?.logId)"

    invoke-static {v15, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v16, Lacb;->e:Lzbb;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/yandex/div2/DivActionTemplate;->d:Ltp3;

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v7, v12

    :goto_3
    sget-object v17, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v4, "log_url"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move v6, v10

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026rent?.logUrl, ANY_TO_URI)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/yandex/div2/DivActionTemplate;->e:Ltp3;

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object v6, v12

    :goto_4
    iget-object v2, v0, Lcom/yandex/div2/DivActionJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->y0()Lyi5;

    move-result-object v7

    const-string v4, "menu_items"

    move-object v2, v11

    move-object/from16 v3, p3

    move v5, v10

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026nuItemJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/yandex/div2/DivActionTemplate;->f:Ltp3;

    goto :goto_5

    :cond_5
    move-object v2, v12

    :goto_5
    const-string v3, "payload"

    invoke-static {v11, v9, v3, v10, v2}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v6

    const-string v2, "readOptionalField(contex\u2026verride, parent?.payload)"

    invoke-static {v6, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/yandex/div2/DivActionTemplate;->g:Ltp3;

    move-object/from16 v18, v2

    goto :goto_6

    :cond_6
    move-object/from16 v18, v12

    :goto_6
    const-string v4, "referer"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move-object/from16 v19, v6

    move v6, v10

    move-object/from16 v20, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026ent?.referer, ANY_TO_URI)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/yandex/div2/DivActionTemplate;->h:Ltp3;

    goto :goto_7

    :cond_7
    move-object v2, v12

    :goto_7
    const-string v3, "scope_id"

    invoke-static {v11, v9, v3, v10, v2}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026verride, parent?.scopeId)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivActionJsonParser;->c:Lzbb;

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/yandex/div2/DivActionTemplate;->i:Ltp3;

    move-object/from16 v21, v2

    goto :goto_8

    :cond_8
    move-object/from16 v21, v12

    :goto_8
    sget-object v22, Lcom/yandex/div2/DivAction$Target;->FROM_STRING:Le74;

    const-string v4, "target"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v10

    move-object/from16 v23, v7

    move-object/from16 v7, v21

    move-object/from16 v21, v8

    move-object/from16 v8, v22

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026ction.Target.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/yandex/div2/DivActionTemplate;->j:Ltp3;

    move-object v6, v2

    goto :goto_9

    :cond_9
    move-object v6, v12

    :goto_9
    iget-object v0, v0, Lcom/yandex/div2/DivActionJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->i1()Lyi5;

    move-result-object v7

    const-string v4, "typed"

    move-object v2, v11

    move-object/from16 v3, p3

    move v5, v10

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v0, "readOptionalField(contex\u2026nTypedJsonTemplateParser)"

    invoke-static {v7, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_a

    iget-object v0, v1, Lcom/yandex/div2/DivActionTemplate;->k:Ltp3;

    move-object v5, v0

    goto :goto_a

    :cond_a
    move-object v5, v12

    :goto_a
    const-string v2, "url"

    move-object v0, v11

    move-object/from16 v1, p3

    move-object/from16 v3, v16

    move v4, v10

    move-object/from16 v6, v17

    invoke-static/range {v0 .. v6}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v0

    const-string v1, "readOptionalFieldWithExp\u2026 parent?.url, ANY_TO_URI)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, v24

    move-object/from16 v16, v18

    move-object/from16 v17, v20

    move-object/from16 v18, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v23

    move-object/from16 v21, v8

    move-object/from16 v22, v7

    move-object/from16 v23, v0

    invoke-direct/range {v12 .. v23}, Lcom/yandex/div2/DivActionTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v24
.end method

.method public e(Lex7;Lcom/yandex/div2/DivActionTemplate;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivActionTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivActionJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Q2()Lyi5;

    move-result-object v2

    const-string v3, "download_callbacks"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "is_enabled"

    iget-object v2, p2, Lcom/yandex/div2/DivActionTemplate;->b:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "log_id"

    iget-object v2, p2, Lcom/yandex/div2/DivActionTemplate;->c:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivActionTemplate;->d:Ltp3;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->c:Le74;

    const-string v3, "log_url"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivActionTemplate;->e:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivActionJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->y0()Lyi5;

    move-result-object v3

    const-string v4, "menu_items"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "payload"

    iget-object v3, p2, Lcom/yandex/div2/DivActionTemplate;->f:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "referer"

    iget-object v3, p2, Lcom/yandex/div2/DivActionTemplate;->g:Ltp3;

    invoke-static {p1, v0, v1, v3, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "scope_id"

    iget-object v3, p2, Lcom/yandex/div2/DivActionTemplate;->h:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivActionTemplate;->i:Ltp3;

    sget-object v3, Lcom/yandex/div2/DivAction$Target;->TO_STRING:Le74;

    const-string v4, "target"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivActionTemplate;->j:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivActionJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->i1()Lyi5;

    move-result-object p0

    const-string v3, "typed"

    invoke-static {p1, v0, v3, v1, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string p0, "url"

    iget-object p2, p2, Lcom/yandex/div2/DivActionTemplate;->k:Ltp3;

    invoke-static {p1, v0, p0, p2, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    return-object v0
.end method
