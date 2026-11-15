.class public final Lcom/yandex/div2/DivStateJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivStateJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivStateJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivState;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivStateJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivState;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivState;
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v1, "context"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v41, Lcom/yandex/div2/DivState;

    iget-object v1, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->H()Lyi5;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/yandex/div2/DivAccessibility;

    sget-object v1, Lcom/yandex/div2/DivStateJsonParser;->h:Lzbb;

    sget-object v2, Lcom/yandex/div2/DivAlignmentHorizontal;->FROM_STRING:Le74;

    const-string v3, "alignment_horizontal"

    invoke-static {v8, v9, v3, v1, v2}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v11

    sget-object v1, Lcom/yandex/div2/DivStateJsonParser;->i:Lzbb;

    sget-object v2, Lcom/yandex/div2/DivAlignmentVertical;->FROM_STRING:Le74;

    const-string v3, "alignment_vertical"

    invoke-static {v8, v9, v3, v1, v2}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v12

    sget-object v4, Lacb;->d:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v6, Lcom/yandex/div2/DivStateJsonParser;->l:Lpnb;

    sget-object v13, Lcom/yandex/div2/DivStateJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "alpha"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v7, v13

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v13, v1

    :goto_0
    iget-object v1, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q1()Lyi5;

    move-result-object v1

    const-string v2, "animators"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v7

    iget-object v1, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->C1()Lyi5;

    move-result-object v1

    const-string v2, "background"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v14

    iget-object v1, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->I1()Lyi5;

    move-result-object v1

    const-string v2, "border"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/yandex/div2/DivBorder;

    sget-object v4, Lacb;->a:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v16, Lcom/yandex/div2/DivStateJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "clip_to_bounds"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v16, v1

    :goto_1
    sget-object v17, Lacb;->b:Lzbb;

    sget-object v18, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/DivStateJsonParser;->m:Lpnb;

    const-string v3, "column_span"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v19

    sget-object v1, Lacb;->c:Lzbb;

    const-string v2, "default_state_id"

    invoke-static {v8, v9, v2, v1}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v20

    iget-object v2, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->M2()Lyi5;

    move-result-object v2

    const-string v3, "disappear_actions"

    invoke-static {v8, v9, v3, v2}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v21

    const-string v2, "div_id"

    invoke-static {v8, v9, v2}, Ltb5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Ljava/lang/String;

    iget-object v2, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Y2()Lyi5;

    move-result-object v2

    const-string v3, "extensions"

    invoke-static {v8, v9, v3, v2}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v23

    iget-object v2, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->w3()Lyi5;

    move-result-object v2

    const-string v3, "focus"

    invoke-static {v8, v9, v3, v2}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lcom/yandex/div2/DivFocus;

    iget-object v2, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->F3()Lyi5;

    move-result-object v2

    const-string v3, "functions"

    invoke-static {v8, v9, v3, v2}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v25

    iget-object v2, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v2

    const-string v3, "height"

    invoke-static {v8, v9, v3, v2}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivSize;

    if-nez v2, :cond_2

    sget-object v2, Lcom/yandex/div2/DivStateJsonParser;->d:Lcom/yandex/div2/DivSize$d;

    :cond_2
    move-object v6, v2

    const-string v2, "JsonPropertyParser.readO\u2026) ?: HEIGHT_DEFAULT_VALUE"

    invoke-static {v6, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "id"

    invoke-static {v8, v9, v2}, Ltb5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Ljava/lang/String;

    iget-object v2, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->M4()Lyi5;

    move-result-object v2

    const-string v3, "layout_provider"

    invoke-static {v8, v9, v3, v2}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Lcom/yandex/div2/DivLayoutProvider;

    iget-object v2, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v2

    const-string v3, "margins"

    invoke-static {v8, v9, v3, v2}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Lcom/yandex/div2/DivEdgeInsets;

    iget-object v2, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v2

    const-string v3, "paddings"

    invoke-static {v8, v9, v3, v2}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Lcom/yandex/div2/DivEdgeInsets;

    const-string v2, "reuse_id"

    invoke-static {v8, v9, v2, v1}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v30

    const-string v3, "row_span"

    sget-object v31, Lcom/yandex/div2/DivStateJsonParser;->n:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v31

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v31

    iget-object v1, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v1

    const-string v2, "selected_actions"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v32

    const-string v1, "state_id_variable"

    invoke-static {v8, v9, v1}, Ltb5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Ljava/lang/String;

    iget-object v1, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q7()Lyi5;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivStateJsonParser;->o:Lhm5;

    const-string v3, "states"

    invoke-static {v8, v9, v3, v1, v2}, Ltb5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object v6

    const-string v1, "readList(context, data, \u2026Parser, STATES_VALIDATOR)"

    invoke-static {v6, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J8()Lyi5;

    move-result-object v1

    const-string v2, "tooltips"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v34

    iget-object v1, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V8()Lyi5;

    move-result-object v1

    const-string v2, "transform"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v35, v1

    check-cast v35, Lcom/yandex/div2/DivTransform;

    sget-object v4, Lcom/yandex/div2/DivStateJsonParser;->j:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivTransitionSelector;->FROM_STRING:Le74;

    sget-object v17, Lcom/yandex/div2/DivStateJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "transition_animation_selector"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v36, v6

    move-object/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v37, v17

    goto :goto_2

    :cond_3
    move-object/from16 v37, v1

    :goto_2
    iget-object v1, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->R1()Lyi5;

    move-result-object v1

    const-string v2, "transition_change"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v38, v1

    check-cast v38, Lcom/yandex/div2/DivChangeTransition;

    iget-object v1, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v1

    const-string v2, "transition_in"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v39, v1

    check-cast v39, Lcom/yandex/div2/DivAppearanceTransition;

    iget-object v1, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v1

    const-string v2, "transition_out"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v40, v1

    check-cast v40, Lcom/yandex/div2/DivAppearanceTransition;

    sget-object v1, Lcom/yandex/div2/DivTransitionTrigger;->FROM_STRING:Le74;

    sget-object v2, Lcom/yandex/div2/DivStateJsonParser;->p:Lhm5;

    const-string v3, "transition_triggers"

    invoke-static {v8, v9, v3, v1, v2}, Ltb5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lhm5;)Ljava/util/List;

    move-result-object v42

    iget-object v1, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y8()Lyi5;

    move-result-object v1

    const-string v2, "variable_triggers"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v43

    iget-object v1, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->e9()Lyi5;

    move-result-object v1

    const-string v2, "variables"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v44

    sget-object v4, Lcom/yandex/div2/DivStateJsonParser;->k:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivVisibility;->FROM_STRING:Le74;

    sget-object v17, Lcom/yandex/div2/DivStateJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "visibility"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_4

    move-object/from16 v1, v17

    :cond_4
    iget-object v2, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_action"

    invoke-static {v8, v9, v3, v2}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v45, v2

    check-cast v45, Lcom/yandex/div2/DivVisibilityAction;

    iget-object v2, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_actions"

    invoke-static {v8, v9, v3, v2}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v46

    iget-object v0, v0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v0

    const-string v2, "width"

    invoke-static {v8, v9, v2, v0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivSize;

    if-nez v0, :cond_5

    sget-object v0, Lcom/yandex/div2/DivStateJsonParser;->g:Lcom/yandex/div2/DivSize$c;

    :cond_5
    const-string v2, "JsonPropertyParser.readO\u2026r) ?: WIDTH_DEFAULT_VALUE"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v41

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    move-object/from16 v16, v24

    move-object/from16 v17, v25

    move-object/from16 v19, v26

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move-object/from16 v24, v31

    move-object/from16 v25, v32

    move-object/from16 v26, v33

    move-object/from16 v27, v36

    move-object/from16 v28, v34

    move-object/from16 v29, v35

    move-object/from16 v30, v37

    move-object/from16 v31, v38

    move-object/from16 v32, v39

    move-object/from16 v33, v40

    move-object/from16 v34, v42

    move-object/from16 v35, v43

    move-object/from16 v36, v44

    move-object/from16 v37, v1

    move-object/from16 v38, v45

    move-object/from16 v39, v46

    move-object/from16 v40, v0

    invoke-direct/range {v2 .. v40}, Lcom/yandex/div2/DivState;-><init>(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/lang/String;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)V

    return-object v41
.end method

.method public e(Lex7;Lcom/yandex/div2/DivState;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->H()Lyi5;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivAlignmentHorizontal;->TO_STRING:Le74;

    const-string v3, "alignment_horizontal"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivAlignmentVertical;->TO_STRING:Le74;

    const-string v3, "alignment_vertical"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "alpha"

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->A()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->q1()Lyi5;

    move-result-object v2

    const-string v3, "animators"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->getBackground()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->C1()Lyi5;

    move-result-object v2

    const-string v3, "background"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->I1()Lyi5;

    move-result-object v2

    const-string v3, "border"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "clip_to_bounds"

    iget-object v2, p2, Lcom/yandex/div2/DivState;->h:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "column_span"

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "default_state_id"

    iget-object v2, p2, Lcom/yandex/div2/DivState;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->k()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->M2()Lyi5;

    move-result-object v2

    const-string v3, "disappear_actions"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    const-string v1, "div_id"

    iget-object v2, p2, Lcom/yandex/div2/DivState;->l:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->getExtensions()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Y2()Lyi5;

    move-result-object v2

    const-string v3, "extensions"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->w3()Lyi5;

    move-result-object v2

    const-string v3, "focus"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->y()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->F3()Lyi5;

    move-result-object v2

    const-string v3, "functions"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v2

    const-string v3, "height"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "id"

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->M4()Lyi5;

    move-result-object v2

    const-string v3, "layout_provider"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v2

    const-string v3, "margins"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v2

    const-string v3, "paddings"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "reuse_id"

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "row_span"

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->u()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v2

    const-string v3, "selected_actions"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    const-string v1, "state_id_variable"

    iget-object v2, p2, Lcom/yandex/div2/DivState;->x:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/yandex/div2/DivState;->y:Ljava/util/List;

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->q7()Lyi5;

    move-result-object v2

    const-string v3, "states"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->h()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->J8()Lyi5;

    move-result-object v2

    const-string v3, "tooltips"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->V8()Lyi5;

    move-result-object v2

    const-string v3, "transform"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivState;->B:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivTransitionSelector;->TO_STRING:Le74;

    const-string v3, "transition_animation_selector"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->R1()Lyi5;

    move-result-object v2

    const-string v3, "transition_change"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v2

    const-string v3, "transition_in"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v2

    const-string v3, "transition_out"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->n()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivTransitionTrigger;->TO_STRING:Le74;

    const-string v3, "transition_triggers"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->y(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Le74;)V

    const-string v1, "type"

    const-string v2, "state"

    invoke-static {p1, v0, v1, v2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->w()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Y8()Lyi5;

    move-result-object v2

    const-string v3, "variable_triggers"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->c()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->e9()Lyi5;

    move-result-object v2

    const-string v3, "variables"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivVisibility;->TO_STRING:Le74;

    const-string v3, "visibility"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_action"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_actions"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivState;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p2

    iget-object p0, p0, Lcom/yandex/div2/DivStateJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object p0

    const-string v1, "width"

    invoke-static {p1, v0, v1, p2, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    return-object v0
.end method
