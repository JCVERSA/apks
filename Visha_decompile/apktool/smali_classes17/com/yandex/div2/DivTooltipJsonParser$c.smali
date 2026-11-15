.class public final Lcom/yandex/div2/DivTooltipJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTooltipJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTooltipJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTooltipTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTooltipJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivTooltipTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTooltipTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTooltipJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivTooltipTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTooltipTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivTooltipTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTooltipTemplate;
    .locals 26

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

    new-instance v25, Lcom/yandex/div2/DivTooltipTemplate;

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/yandex/div2/DivTooltipTemplate;->a:Ltp3;

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v13

    :goto_0
    iget-object v2, v0, Lcom/yandex/div2/DivTooltipJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->o1()Lyi5;

    move-result-object v7

    const-string v4, "animation_in"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v14

    const-string v8, "readOptionalField(contex\u2026mationJsonTemplateParser)"

    invoke-static {v14, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/yandex/div2/DivTooltipTemplate;->b:Ltp3;

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v13

    :goto_1
    iget-object v2, v0, Lcom/yandex/div2/DivTooltipJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->o1()Lyi5;

    move-result-object v7

    const-string v4, "animation_out"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v15

    invoke-static {v15, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->c:Lzbb;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/yandex/div2/DivTooltipTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v13

    :goto_2
    const-string v4, "background_accessibility_description"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026AccessibilityDescription)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->a:Lzbb;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/yandex/div2/DivTooltipTemplate;->d:Ltp3;

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v7, v13

    :goto_3
    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v4, "close_by_tap_outside"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026pOutside, ANY_TO_BOOLEAN)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/yandex/div2/DivTooltipTemplate;->e:Ltp3;

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object v6, v13

    :goto_4
    iget-object v2, v0, Lcom/yandex/div2/DivTooltipJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->K4()Lyi5;

    move-result-object v7

    const-string v4, "div"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readField(context, data,\u2026nt.divJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->b:Lzbb;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/yandex/div2/DivTooltipTemplate;->f:Ltp3;

    move-object/from16 v16, v2

    goto :goto_5

    :cond_5
    move-object/from16 v16, v13

    :goto_5
    sget-object v17, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v18, Lcom/yandex/div2/DivTooltipJsonParser;->f:Lpnb;

    const-string v4, "duration"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v19, v7

    move-object/from16 v7, v16

    move-object/from16 v20, v8

    move-object/from16 v8, v17

    move-object/from16 v16, v9

    move-object/from16 v9, v18

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_INT, DURATION_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/yandex/div2/DivTooltipTemplate;->g:Ltp3;

    goto :goto_6

    :cond_6
    move-object v2, v13

    :goto_6
    const-string v3, "id"

    invoke-static {v12, v10, v3, v11, v2}, Lra5;->c(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v8

    const-string v2, "readField(context, data,\u2026llowOverride, parent?.id)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/yandex/div2/DivTooltipTemplate;->h:Ltp3;

    move-object v6, v2

    goto :goto_7

    :cond_7
    move-object v6, v13

    :goto_7
    iget-object v2, v0, Lcom/yandex/div2/DivTooltipJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N8()Lyi5;

    move-result-object v7

    const-string v4, "mode"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026ipModeJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/yandex/div2/DivTooltipTemplate;->i:Ltp3;

    move-object v6, v2

    goto :goto_8

    :cond_8
    move-object v6, v13

    :goto_8
    iget-object v2, v0, Lcom/yandex/div2/DivTooltipJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->X5()Lyi5;

    move-result-object v17

    const-string v4, "offset"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v21, v7

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026vPointJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivTooltipJsonParser;->e:Lzbb;

    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/yandex/div2/DivTooltipTemplate;->j:Ltp3;

    move-object/from16 v17, v2

    goto :goto_9

    :cond_9
    move-object/from16 v17, v13

    :goto_9
    sget-object v18, Lcom/yandex/div2/DivTooltip$Position;->FROM_STRING:Le74;

    const-string v4, "position"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v22, v7

    move-object/from16 v7, v17

    move-object/from16 v23, v8

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v8}, Lra5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v6

    const-string v2, "readFieldWithExpression(\u2026tip.Position.FROM_STRING)"

    invoke-static {v6, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/yandex/div2/DivTooltipTemplate;->k:Ltp3;

    move-object v4, v1

    goto :goto_a

    :cond_a
    move-object v4, v13

    :goto_a
    iget-object v0, v0, Lcom/yandex/div2/DivTooltipJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v5

    const-string v2, "tap_outside_actions"

    move-object v0, v12

    move-object/from16 v1, p3

    move v3, v11

    invoke-static/range {v0 .. v5}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v0

    const-string v1, "readOptionalListField(co\u2026ActionJsonTemplateParser)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v25

    move-object/from16 v17, v20

    move-object/from16 v18, v19

    move-object/from16 v19, v9

    move-object/from16 v20, v23

    move-object/from16 v23, v6

    move-object/from16 v24, v0

    invoke-direct/range {v13 .. v24}, Lcom/yandex/div2/DivTooltipTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v25
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTooltipTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivTooltipTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTooltipJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->o1()Lyi5;

    move-result-object v2

    const-string v3, "animation_in"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTooltipTemplate;->b:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTooltipJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->o1()Lyi5;

    move-result-object v2

    const-string v3, "animation_out"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "background_accessibility_description"

    iget-object v2, p2, Lcom/yandex/div2/DivTooltipTemplate;->c:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "close_by_tap_outside"

    iget-object v2, p2, Lcom/yandex/div2/DivTooltipTemplate;->d:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTooltipTemplate;->e:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTooltipJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->K4()Lyi5;

    move-result-object v2

    const-string v3, "div"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "duration"

    iget-object v2, p2, Lcom/yandex/div2/DivTooltipTemplate;->f:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "id"

    iget-object v2, p2, Lcom/yandex/div2/DivTooltipTemplate;->g:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTooltipTemplate;->h:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTooltipJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N8()Lyi5;

    move-result-object v2

    const-string v3, "mode"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTooltipTemplate;->i:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTooltipJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->X5()Lyi5;

    move-result-object v2

    const-string v3, "offset"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTooltipTemplate;->j:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivTooltip$Position;->TO_STRING:Le74;

    const-string v3, "position"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object p2, p2, Lcom/yandex/div2/DivTooltipTemplate;->k:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivTooltipJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object p0

    const-string v1, "tap_outside_actions"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
