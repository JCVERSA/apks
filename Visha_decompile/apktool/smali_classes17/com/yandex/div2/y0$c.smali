.class public final Lcom/yandex/div2/y0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/y0;
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

    iput-object p1, p0, Lcom/yandex/div2/y0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivDisappearActionTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/y0$c;->e(Lex7;Lcom/yandex/div2/DivDisappearActionTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivDisappearActionTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/y0$c;->d(Lex7;Lcom/yandex/div2/DivDisappearActionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivDisappearActionTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivDisappearActionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivDisappearActionTemplate;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v10, p3

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-static {v10, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v11

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v12

    new-instance v25, Lcom/yandex/div2/DivDisappearActionTemplate;

    sget-object v13, Lacb;->b:Lzbb;

    const/4 v14, 0x0

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/yandex/div2/DivDisappearActionTemplate;->a:Ltp3;

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v14

    :goto_0
    sget-object v15, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v9, Lcom/yandex/div2/y0;->f:Lpnb;

    const-string v4, "disappear_duration"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object v5, v13

    move v6, v11

    move-object v8, v15

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026PPEAR_DURATION_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/yandex/div2/DivDisappearActionTemplate;->b:Ltp3;

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v14

    :goto_1
    iget-object v2, v0, Lcom/yandex/div2/y0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Q2()Lyi5;

    move-result-object v7

    const-string v4, "download_callbacks"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalField(contex\u2026lbacksJsonTemplateParser)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->a:Lzbb;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/yandex/div2/DivDisappearActionTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v14

    :goto_2
    sget-object v16, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v4, "is_enabled"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v17, v8

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026sEnabled, ANY_TO_BOOLEAN)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->c:Lzbb;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/yandex/div2/DivDisappearActionTemplate;->d:Ltp3;

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v7, v14

    :goto_3
    const-string v4, "log_id"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    invoke-static/range {v2 .. v7}, Lra5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readFieldWithExpression(\u2026wOverride, parent?.logId)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/yandex/div2/DivDisappearActionTemplate;->e:Ltp3;

    move-object/from16 v16, v2

    goto :goto_4

    :cond_4
    move-object/from16 v16, v14

    :goto_4
    sget-object v18, Lcom/yandex/div2/y0;->g:Lpnb;

    const-string v4, "log_limit"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object v5, v13

    move v6, v11

    move-object/from16 v19, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v8

    move-object v8, v15

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026INT, LOG_LIMIT_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/yandex/div2/DivDisappearActionTemplate;->f:Ltp3;

    goto :goto_5

    :cond_5
    move-object v2, v14

    :goto_5
    const-string v3, "payload"

    invoke-static {v12, v10, v3, v11, v2}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalField(contex\u2026verride, parent?.payload)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v18, Lacb;->e:Lzbb;

    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/yandex/div2/DivDisappearActionTemplate;->g:Ltp3;

    move-object v7, v2

    goto :goto_6

    :cond_6
    move-object v7, v14

    :goto_6
    sget-object v21, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v4, "referer"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v18

    move v6, v11

    move-object/from16 v22, v8

    move-object/from16 v8, v21

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026ent?.referer, ANY_TO_URI)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/yandex/div2/DivDisappearActionTemplate;->h:Ltp3;

    goto :goto_7

    :cond_7
    move-object v2, v14

    :goto_7
    const-string v3, "scope_id"

    invoke-static {v12, v10, v3, v11, v2}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026verride, parent?.scopeId)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/yandex/div2/DivDisappearActionTemplate;->i:Ltp3;

    move-object v6, v2

    goto :goto_8

    :cond_8
    move-object v6, v14

    :goto_8
    iget-object v0, v0, Lcom/yandex/div2/y0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->i1()Lyi5;

    move-result-object v0

    const-string v4, "typed"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v23, v7

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v0

    const-string v2, "readOptionalField(contex\u2026nTypedJsonTemplateParser)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/yandex/div2/DivDisappearActionTemplate;->j:Ltp3;

    move-object v7, v2

    goto :goto_9

    :cond_9
    move-object v7, v14

    :goto_9
    const-string v4, "url"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v18

    move v6, v11

    move-object/from16 v24, v8

    move-object/from16 v8, v21

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026 parent?.url, ANY_TO_URI)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/yandex/div2/DivDisappearActionTemplate;->k:Ltp3;

    move-object v5, v1

    goto :goto_a

    :cond_a
    move-object v5, v14

    :goto_a
    sget-object v7, Lcom/yandex/div2/y0;->h:Lpnb;

    const-string v2, "visibility_percentage"

    move-object/from16 v26, v0

    move-object v0, v12

    move-object/from16 v1, p3

    move-object v3, v13

    move v4, v11

    move-object v6, v15

    invoke-static/range {v0 .. v7}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v0

    const-string v1, "readOptionalFieldWithExp\u2026ITY_PERCENTAGE_VALIDATOR)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v25

    move-object/from16 v14, v20

    move-object/from16 v15, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v9

    move-object/from16 v19, v22

    move-object/from16 v20, v24

    move-object/from16 v21, v23

    move-object/from16 v22, v26

    move-object/from16 v23, v8

    move-object/from16 v24, v0

    invoke-direct/range {v13 .. v24}, Lcom/yandex/div2/DivDisappearActionTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v25
.end method

.method public e(Lex7;Lcom/yandex/div2/DivDisappearActionTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivDisappearActionTemplate;->a:Ltp3;

    const-string v2, "disappear_duration"

    invoke-static {p1, v0, v2, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivDisappearActionTemplate;->b:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/y0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Q2()Lyi5;

    move-result-object v2

    const-string v3, "download_callbacks"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "is_enabled"

    iget-object v2, p2, Lcom/yandex/div2/DivDisappearActionTemplate;->c:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "log_id"

    iget-object v2, p2, Lcom/yandex/div2/DivDisappearActionTemplate;->d:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "log_limit"

    iget-object v2, p2, Lcom/yandex/div2/DivDisappearActionTemplate;->e:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "payload"

    iget-object v2, p2, Lcom/yandex/div2/DivDisappearActionTemplate;->f:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivDisappearActionTemplate;->g:Ltp3;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->c:Le74;

    const-string v3, "referer"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "scope_id"

    iget-object v3, p2, Lcom/yandex/div2/DivDisappearActionTemplate;->h:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivDisappearActionTemplate;->i:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/y0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->i1()Lyi5;

    move-result-object p0

    const-string v3, "typed"

    invoke-static {p1, v0, v3, v1, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string p0, "url"

    iget-object v1, p2, Lcom/yandex/div2/DivDisappearActionTemplate;->j:Ltp3;

    invoke-static {p1, v0, p0, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string p0, "visibility_percentage"

    iget-object p2, p2, Lcom/yandex/div2/DivDisappearActionTemplate;->k:Ltp3;

    invoke-static {p1, v0, p0, p2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    return-object v0
.end method
