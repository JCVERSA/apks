.class public final Lcom/yandex/div2/t3;
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

    iput-object p1, p0, Lcom/yandex/div2/t3;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/t3;->e(Lex7;Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/t3;->d(Lex7;Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    move-object/from16 v10, p3

    invoke-static {v10, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v2

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v11

    new-instance v12, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;

    sget-object v13, Lacb;->b:Lzbb;

    const/4 v14, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->a:Ltp3;

    move-object v8, v3

    goto :goto_0

    :cond_0
    move-object v8, v14

    :goto_0
    sget-object v15, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    const-string v5, "end"

    move-object v3, v11

    move-object/from16 v4, p3

    move-object v6, v13

    move v7, v2

    move-object v9, v15

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026rent?.end, NUMBER_TO_INT)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->b:Ltp3;

    move-object v7, v3

    goto :goto_1

    :cond_1
    move-object v7, v14

    :goto_1
    iget-object v3, v0, Lcom/yandex/div2/t3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v8

    const-string v5, "margins"

    move-object v3, v11

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v3, "readOptionalField(contex\u2026InsetsJsonTemplateParser)"

    invoke-static {v8, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->c:Ltp3;

    move-object/from16 v16, v3

    goto :goto_2

    :cond_2
    move-object/from16 v16, v14

    :goto_2
    const-string v5, "start"

    move-object v3, v11

    move-object/from16 v4, p3

    move-object v6, v13

    move v7, v2

    move-object v13, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v9

    move-object v9, v15

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026nt?.start, NUMBER_TO_INT)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->d:Ltp3;

    move-object v7, v3

    goto :goto_3

    :cond_3
    move-object v7, v14

    :goto_3
    iget-object v3, v0, Lcom/yandex/div2/t3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v8

    const-string v5, "track_active_style"

    move-object v3, v11

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v15

    const-string v8, "readOptionalField(contex\u2026awableJsonTemplateParser)"

    invoke-static {v15, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->e:Ltp3;

    move-object v7, v1

    goto :goto_4

    :cond_4
    move-object v7, v14

    :goto_4
    iget-object v0, v0, Lcom/yandex/div2/t3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v0

    const-string v5, "track_inactive_style"

    move-object v3, v11

    move-object/from16 v4, p3

    move v6, v2

    move-object v1, v8

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    invoke-static {v8, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v12

    move-object/from16 v4, v16

    move-object v5, v13

    move-object v6, v9

    move-object v7, v15

    invoke-direct/range {v3 .. v8}, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v12
.end method

.method public e(Lex7;Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->a:Ltp3;

    const-string v2, "end"

    invoke-static {p1, v0, v2, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->b:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/t3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v2

    const-string v3, "margins"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "start"

    iget-object v2, p2, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->c:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->d:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/t3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v2

    const-string v3, "track_active_style"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object p2, p2, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->e:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/t3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object p0

    const-string v1, "track_inactive_style"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
