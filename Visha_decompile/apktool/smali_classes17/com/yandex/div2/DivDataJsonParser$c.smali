.class public final Lcom/yandex/div2/DivDataJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivDataJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivDataJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivDataTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivDataJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivDataTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivDataTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivDataJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivDataTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivDataTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivDataTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivDataTemplate;
    .locals 19

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

    new-instance v12, Lcom/yandex/div2/DivDataTemplate;

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/yandex/div2/DivDataTemplate;->a:Ltp3;

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v13

    :goto_0
    iget-object v2, v0, Lcom/yandex/div2/DivDataJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->G3()Lyi5;

    move-result-object v7

    const-string v4, "functions"

    move-object v2, v11

    move-object/from16 v3, p3

    move v5, v10

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v14

    const-string v2, "readOptionalListField(co\u2026nctionJsonTemplateParser)"

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/yandex/div2/DivDataTemplate;->b:Ltp3;

    goto :goto_1

    :cond_1
    move-object v2, v13

    :goto_1
    const-string v3, "log_id"

    invoke-static {v11, v9, v3, v10, v2}, Lra5;->c(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v15

    const-string v2, "readField(context, data,\u2026wOverride, parent?.logId)"

    invoke-static {v15, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/yandex/div2/DivDataTemplate;->c:Ltp3;

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, v13

    :goto_2
    iget-object v2, v0, Lcom/yandex/div2/DivDataJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->E2()Lyi5;

    move-result-object v7

    sget-object v8, Lcom/yandex/div2/DivDataJsonParser;->d:Lhm5;

    const-string v2, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>"

    invoke-static {v8, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "states"

    move-object v2, v11

    move-object/from16 v3, p3

    move v5, v10

    invoke-static/range {v2 .. v8}, Lra5;->m(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;Lhm5;)Ltp3;

    move-result-object v8

    const-string v2, "readListField(context, d\u2026 STATES_VALIDATOR.cast())"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/yandex/div2/DivDataTemplate;->d:Ltp3;

    move-object v6, v2

    goto :goto_3

    :cond_3
    move-object v6, v13

    :goto_3
    iget-object v2, v0, Lcom/yandex/div2/DivDataJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->H8()Lyi5;

    move-result-object v7

    const-string v4, "timers"

    move-object v2, v11

    move-object/from16 v3, p3

    move v5, v10

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026vTimerJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivDataJsonParser;->c:Lzbb;

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/yandex/div2/DivDataTemplate;->e:Ltp3;

    move-object/from16 v16, v2

    goto :goto_4

    :cond_4
    move-object/from16 v16, v13

    :goto_4
    sget-object v17, Lcom/yandex/div2/DivTransitionSelector;->FROM_STRING:Le74;

    const-string v4, "transition_animation_selector"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v10

    move-object/from16 v18, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026tionSelector.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/yandex/div2/DivDataTemplate;->f:Ltp3;

    move-object v6, v2

    goto :goto_5

    :cond_5
    move-object v6, v13

    :goto_5
    iget-object v2, v0, Lcom/yandex/div2/DivDataJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z8()Lyi5;

    move-result-object v7

    const-string v4, "variable_triggers"

    move-object v2, v11

    move-object/from16 v3, p3

    move v5, v10

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v6

    const-string v2, "readOptionalListField(co\u2026riggerJsonTemplateParser)"

    invoke-static {v6, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/yandex/div2/DivDataTemplate;->g:Ltp3;

    move-object v4, v1

    goto :goto_6

    :cond_6
    move-object v4, v13

    :goto_6
    iget-object v0, v0, Lcom/yandex/div2/DivDataJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->f9()Lyi5;

    move-result-object v5

    const-string v2, "variables"

    move-object v0, v11

    move-object/from16 v1, p3

    move v3, v10

    invoke-static/range {v0 .. v5}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v0, "readOptionalListField(co\u2026riableJsonTemplateParser)"

    invoke-static {v7, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v12

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    move-object v5, v8

    invoke-direct/range {v0 .. v7}, Lcom/yandex/div2/DivDataTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v12
.end method

.method public e(Lex7;Lcom/yandex/div2/DivDataTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivDataTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivDataJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->G3()Lyi5;

    move-result-object v2

    const-string v3, "functions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "log_id"

    iget-object v2, p2, Lcom/yandex/div2/DivDataTemplate;->b:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivDataTemplate;->c:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivDataJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->E2()Lyi5;

    move-result-object v2

    const-string v3, "states"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivDataTemplate;->d:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivDataJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->H8()Lyi5;

    move-result-object v2

    const-string v3, "timers"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivDataTemplate;->e:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivTransitionSelector;->TO_STRING:Le74;

    const-string v3, "transition_animation_selector"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivDataTemplate;->f:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivDataJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z8()Lyi5;

    move-result-object v2

    const-string v3, "variable_triggers"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object p2, p2, Lcom/yandex/div2/DivDataTemplate;->g:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivDataJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->f9()Lyi5;

    move-result-object p0

    const-string v1, "variables"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
