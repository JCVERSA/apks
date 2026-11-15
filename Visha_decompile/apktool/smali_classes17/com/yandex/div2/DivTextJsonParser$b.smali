.class public final Lcom/yandex/div2/DivTextJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTextJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTextJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivText;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTextJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivText;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText;
    .locals 88

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v1, "context"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v72, Lcom/yandex/div2/DivText;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->H()Lyi5;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/yandex/div2/DivAccessibility;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v1

    const-string v2, "action"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/yandex/div2/DivAction;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->n1()Lyi5;

    move-result-object v1

    const-string v2, "action_animation"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAnimation;

    if-nez v1, :cond_0

    sget-object v1, Lcom/yandex/div2/DivTextJsonParser;->b:Lcom/yandex/div2/DivAnimation;

    :cond_0
    move-object v12, v1

    const-string v1, "JsonPropertyParser.readO\u2026N_ANIMATION_DEFAULT_VALUE"

    invoke-static {v12, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v1

    const-string v2, "actions"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v13

    sget-object v1, Lcom/yandex/div2/DivTextJsonParser;->t:Lzbb;

    sget-object v14, Lcom/yandex/div2/DivAlignmentHorizontal;->FROM_STRING:Le74;

    const-string v2, "alignment_horizontal"

    invoke-static {v8, v9, v2, v1, v14}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v15

    sget-object v1, Lcom/yandex/div2/DivTextJsonParser;->u:Lzbb;

    sget-object v7, Lcom/yandex/div2/DivAlignmentVertical;->FROM_STRING:Le74;

    const-string v2, "alignment_vertical"

    invoke-static {v8, v9, v2, v1, v7}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v16

    sget-object v17, Lacb;->d:Lzbb;

    sget-object v18, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v6, Lcom/yandex/div2/DivTextJsonParser;->D:Lpnb;

    sget-object v19, Lcom/yandex/div2/DivTextJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "alpha"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v20, v7

    move-object/from16 v7, v19

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v19, v1

    :goto_0
    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q1()Lyi5;

    move-result-object v1

    const-string v2, "animators"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v21

    sget-object v7, Lacb;->a:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v1, "auto_ellipsize"

    invoke-static {v8, v9, v1, v7, v6}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v22

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->C1()Lyi5;

    move-result-object v1

    const-string v2, "background"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v23

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->I1()Lyi5;

    move-result-object v1

    const-string v2, "border"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/yandex/div2/DivBorder;

    sget-object v25, Lcom/yandex/div2/DivTextJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "capture_focus_on_action"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v7

    move-object v5, v6

    move-object/from16 v26, v6

    move-object/from16 v6, v25

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v25, v1

    :goto_1
    sget-object v27, Lacb;->b:Lzbb;

    sget-object v28, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/DivTextJsonParser;->E:Lpnb;

    const-string v3, "column_span"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v29

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M2()Lyi5;

    move-result-object v1

    const-string v2, "disappear_actions"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v30

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v1

    const-string v2, "doubletap_actions"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v31

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X7()Lyi5;

    move-result-object v1

    const-string v2, "ellipsis"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lcom/yandex/div2/DivText$Ellipsis;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y2()Lyi5;

    move-result-object v1

    const-string v2, "extensions"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v33

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w3()Lyi5;

    move-result-object v1

    const-string v2, "focus"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v34, v1

    check-cast v34, Lcom/yandex/div2/DivFocus;

    sget-object v6, Lacb;->f:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v1, "focused_text_color"

    invoke-static {v8, v9, v1, v6, v5}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v35

    sget-object v4, Lacb;->c:Lzbb;

    const-string v1, "font_family"

    invoke-static {v8, v9, v1, v4}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v36

    const-string v1, "font_feature_settings"

    invoke-static {v8, v9, v1, v4}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v37

    sget-object v38, Lcom/yandex/div2/DivTextJsonParser;->F:Lpnb;

    sget-object v39, Lcom/yandex/div2/DivTextJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "font_size"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v40, v15

    move-object v15, v4

    move-object/from16 v4, v27

    move-object/from16 v41, v5

    move-object/from16 v5, v28

    move-object/from16 v42, v6

    move-object/from16 v6, v38

    move-object/from16 v38, v7

    move-object/from16 v7, v39

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v39, v1

    :goto_2
    sget-object v4, Lcom/yandex/div2/DivTextJsonParser;->v:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v7, Lcom/yandex/div2/DivTextJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "font_size_unit"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_4

    move-object/from16 v43, v7

    goto :goto_3

    :cond_4
    move-object/from16 v43, v1

    :goto_3
    const-string v1, "font_variation_settings"

    sget-object v2, Lacb;->h:Lzbb;

    invoke-static {v8, v9, v1, v2}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v44

    sget-object v4, Lcom/yandex/div2/DivTextJsonParser;->w:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivFontWeight;->FROM_STRING:Le74;

    sget-object v7, Lcom/yandex/div2/DivTextJsonParser;->g:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "font_weight"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_5

    move-object/from16 v45, v7

    goto :goto_4

    :cond_5
    move-object/from16 v45, v1

    :goto_4
    const-string v3, "font_weight_value"

    sget-object v6, Lcom/yandex/div2/DivTextJsonParser;->G:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v46

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->F3()Lyi5;

    move-result-object v1

    const-string v2, "functions"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v47

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v1

    const-string v2, "height"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivSize;

    if-nez v1, :cond_6

    sget-object v1, Lcom/yandex/div2/DivTextJsonParser;->h:Lcom/yandex/div2/DivSize$d;

    :cond_6
    move-object v7, v1

    const-string v1, "JsonPropertyParser.readO\u2026) ?: HEIGHT_DEFAULT_VALUE"

    invoke-static {v7, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v1

    const-string v2, "hover_end_actions"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v48

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v1

    const-string v2, "hover_start_actions"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v49

    const-string v1, "id"

    invoke-static {v8, v9, v1}, Ltb5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v50, v1

    check-cast v50, Ljava/lang/String;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->g8()Lyi5;

    move-result-object v1

    const-string v2, "images"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v51

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M4()Lyi5;

    move-result-object v1

    const-string v2, "layout_provider"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v52, v1

    check-cast v52, Lcom/yandex/div2/DivLayoutProvider;

    sget-object v53, Lcom/yandex/div2/DivTextJsonParser;->i:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "letter_spacing"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v53

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v53, v1

    :goto_5
    const-string v3, "line_height"

    sget-object v6, Lcom/yandex/div2/DivTextJsonParser;->H:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v54

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v1

    const-string v2, "longtap_actions"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v55

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v1

    const-string v2, "margins"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v56, v1

    check-cast v56, Lcom/yandex/div2/DivEdgeInsets;

    const-string v3, "max_lines"

    sget-object v6, Lcom/yandex/div2/DivTextJsonParser;->I:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v57

    const-string v3, "min_hidden_lines"

    sget-object v6, Lcom/yandex/div2/DivTextJsonParser;->J:Lpnb;

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v58

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v1

    const-string v2, "paddings"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v59, v1

    check-cast v59, Lcom/yandex/div2/DivEdgeInsets;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v1

    const-string v2, "press_end_actions"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v60

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v1

    const-string v2, "press_start_actions"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v61

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s8()Lyi5;

    move-result-object v1

    const-string v2, "ranges"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v62

    const-string v1, "reuse_id"

    invoke-static {v8, v9, v1, v15}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v63

    const-string v3, "row_span"

    sget-object v6, Lcom/yandex/div2/DivTextJsonParser;->K:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v64

    sget-object v17, Lcom/yandex/div2/DivTextJsonParser;->j:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "selectable"

    move-object/from16 v4, v38

    move-object/from16 v5, v26

    move-object/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_8

    move-object/from16 v65, v17

    goto :goto_6

    :cond_8
    move-object/from16 v65, v1

    :goto_6
    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v1

    const-string v2, "selected_actions"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v66

    sget-object v4, Lcom/yandex/div2/DivTextJsonParser;->x:Lzbb;

    sget-object v17, Lcom/yandex/div2/DivLineStyle;->FROM_STRING:Le74;

    sget-object v18, Lcom/yandex/div2/DivTextJsonParser;->k:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "strike"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_9

    move-object/from16 v67, v18

    goto :goto_7

    :cond_9
    move-object/from16 v67, v1

    :goto_7
    const-string v1, "text"

    invoke-static {v8, v9, v1, v15}, Lpa5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v15

    const-string v1, "readExpression(context, \u2026ext\", TYPE_HELPER_STRING)"

    invoke-static {v15, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/yandex/div2/DivTextJsonParser;->y:Lzbb;

    sget-object v18, Lcom/yandex/div2/DivTextJsonParser;->l:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "text_alignment_horizontal"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v14

    move-object/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_a

    move-object/from16 v68, v18

    goto :goto_8

    :cond_a
    move-object/from16 v68, v1

    :goto_8
    sget-object v4, Lcom/yandex/div2/DivTextJsonParser;->z:Lzbb;

    sget-object v14, Lcom/yandex/div2/DivTextJsonParser;->m:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "text_alignment_vertical"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, v20

    move-object v6, v14

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_b

    move-object/from16 v69, v14

    goto :goto_9

    :cond_b
    move-object/from16 v69, v1

    :goto_9
    sget-object v14, Lcom/yandex/div2/DivTextJsonParser;->n:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "text_color"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v42

    move-object/from16 v5, v41

    move-object v6, v14

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_c

    move-object/from16 v70, v14

    goto :goto_a

    :cond_c
    move-object/from16 v70, v1

    :goto_a
    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->a8()Lyi5;

    move-result-object v1

    const-string v2, "text_gradient"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v71, v1

    check-cast v71, Lcom/yandex/div2/DivTextGradient;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M6()Lyi5;

    move-result-object v1

    const-string v2, "text_shadow"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v73, v1

    check-cast v73, Lcom/yandex/div2/DivShadow;

    sget-object v14, Lcom/yandex/div2/DivTextJsonParser;->o:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "tighten_width"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v38

    move-object/from16 v5, v26

    move-object v6, v14

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_d

    move-object/from16 v74, v14

    goto :goto_b

    :cond_d
    move-object/from16 v74, v1

    :goto_b
    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J8()Lyi5;

    move-result-object v1

    const-string v2, "tooltips"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v75

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V8()Lyi5;

    move-result-object v1

    const-string v2, "transform"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v76, v1

    check-cast v76, Lcom/yandex/div2/DivTransform;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->R1()Lyi5;

    move-result-object v1

    const-string v2, "transition_change"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v77, v1

    check-cast v77, Lcom/yandex/div2/DivChangeTransition;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v1

    const-string v2, "transition_in"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v78, v1

    check-cast v78, Lcom/yandex/div2/DivAppearanceTransition;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v1

    const-string v2, "transition_out"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v79, v1

    check-cast v79, Lcom/yandex/div2/DivAppearanceTransition;

    sget-object v1, Lcom/yandex/div2/DivTransitionTrigger;->FROM_STRING:Le74;

    sget-object v2, Lcom/yandex/div2/DivTextJsonParser;->L:Lhm5;

    const-string v3, "transition_triggers"

    invoke-static {v8, v9, v3, v1, v2}, Ltb5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lhm5;)Ljava/util/List;

    move-result-object v80

    sget-object v4, Lcom/yandex/div2/DivTextJsonParser;->A:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivText$Truncate;->FROM_STRING:Le74;

    sget-object v14, Lcom/yandex/div2/DivTextJsonParser;->p:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "truncate"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v14

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_e

    move-object/from16 v81, v14

    goto :goto_c

    :cond_e
    move-object/from16 v81, v1

    :goto_c
    sget-object v4, Lcom/yandex/div2/DivTextJsonParser;->B:Lzbb;

    sget-object v14, Lcom/yandex/div2/DivTextJsonParser;->q:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "underline"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, v17

    move-object v6, v14

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_f

    move-object/from16 v82, v14

    goto :goto_d

    :cond_f
    move-object/from16 v82, v1

    :goto_d
    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y8()Lyi5;

    move-result-object v1

    const-string v2, "variable_triggers"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v83

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->e9()Lyi5;

    move-result-object v1

    const-string v2, "variables"

    invoke-static {v8, v9, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v84

    sget-object v4, Lcom/yandex/div2/DivTextJsonParser;->C:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivVisibility;->FROM_STRING:Le74;

    sget-object v14, Lcom/yandex/div2/DivTextJsonParser;->r:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "visibility"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v14

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_10

    move-object v1, v14

    :cond_10
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_action"

    invoke-static {v8, v9, v3, v2}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v85, v2

    check-cast v85, Lcom/yandex/div2/DivVisibilityAction;

    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_actions"

    invoke-static {v8, v9, v3, v2}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v86

    iget-object v0, v0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v0

    const-string v2, "width"

    invoke-static {v8, v9, v2, v0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivSize;

    if-nez v0, :cond_11

    sget-object v0, Lcom/yandex/div2/DivTextJsonParser;->s:Lcom/yandex/div2/DivSize$c;

    :cond_11
    const-string v2, "JsonPropertyParser.readO\u2026r) ?: WIDTH_DEFAULT_VALUE"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v72

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v38, v7

    move-object/from16 v7, v40

    move-object/from16 v8, v16

    move-object/from16 v9, v19

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    move-object/from16 v87, v15

    move-object/from16 v15, v29

    move-object/from16 v16, v30

    move-object/from16 v17, v31

    move-object/from16 v18, v32

    move-object/from16 v19, v33

    move-object/from16 v20, v34

    move-object/from16 v21, v35

    move-object/from16 v22, v36

    move-object/from16 v23, v37

    move-object/from16 v24, v39

    move-object/from16 v25, v43

    move-object/from16 v26, v44

    move-object/from16 v27, v45

    move-object/from16 v28, v46

    move-object/from16 v29, v47

    move-object/from16 v30, v38

    move-object/from16 v31, v48

    move-object/from16 v32, v49

    move-object/from16 v33, v50

    move-object/from16 v34, v51

    move-object/from16 v35, v52

    move-object/from16 v36, v53

    move-object/from16 v37, v54

    move-object/from16 v38, v55

    move-object/from16 v39, v56

    move-object/from16 v40, v57

    move-object/from16 v41, v58

    move-object/from16 v42, v59

    move-object/from16 v43, v60

    move-object/from16 v44, v61

    move-object/from16 v45, v62

    move-object/from16 v46, v63

    move-object/from16 v47, v64

    move-object/from16 v48, v65

    move-object/from16 v49, v66

    move-object/from16 v50, v67

    move-object/from16 v51, v87

    move-object/from16 v52, v68

    move-object/from16 v53, v69

    move-object/from16 v54, v70

    move-object/from16 v55, v71

    move-object/from16 v56, v73

    move-object/from16 v57, v74

    move-object/from16 v58, v75

    move-object/from16 v59, v76

    move-object/from16 v60, v77

    move-object/from16 v61, v78

    move-object/from16 v62, v79

    move-object/from16 v63, v80

    move-object/from16 v64, v81

    move-object/from16 v65, v82

    move-object/from16 v66, v83

    move-object/from16 v67, v84

    move-object/from16 v68, v1

    move-object/from16 v69, v85

    move-object/from16 v70, v86

    move-object/from16 v71, v0

    invoke-direct/range {v2 .. v71}, Lcom/yandex/div2/DivText;-><init>(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div2/DivAction;Lcom/yandex/div2/DivAnimation;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivText$Ellipsis;Ljava/util/List;Lcom/yandex/div2/DivFocus;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTextGradient;Lcom/yandex/div2/DivShadow;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)V

    return-object v72
.end method

.method public e(Lex7;Lcom/yandex/div2/DivText;)Lorg/json/JSONObject;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->H()Lyi5;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->b:Lcom/yandex/div2/DivAction;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v2

    const-string v3, "action"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->c:Lcom/yandex/div2/DivAnimation;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->n1()Lyi5;

    move-result-object v2

    const-string v3, "action_animation"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v2

    const-string v3, "actions"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivAlignmentHorizontal;->TO_STRING:Le74;

    const-string v3, "alignment_horizontal"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sget-object v3, Lcom/yandex/div2/DivAlignmentVertical;->TO_STRING:Le74;

    const-string v4, "alignment_vertical"

    invoke-static {p1, v0, v4, v1, v3}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "alpha"

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    invoke-static {p1, v0, v1, v4}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->A()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->q1()Lyi5;

    move-result-object v4

    const-string v5, "animators"

    invoke-static {p1, v0, v5, v1, v4}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    const-string v1, "auto_ellipsize"

    iget-object v4, p2, Lcom/yandex/div2/DivText;->i:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v4}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->getBackground()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->C1()Lyi5;

    move-result-object v4

    const-string v5, "background"

    invoke-static {p1, v0, v5, v1, v4}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->B()Lcom/yandex/div2/DivBorder;

    move-result-object v1

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->I1()Lyi5;

    move-result-object v4

    const-string v5, "border"

    invoke-static {p1, v0, v5, v1, v4}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "capture_focus_on_action"

    iget-object v4, p2, Lcom/yandex/div2/DivText;->l:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v4}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "column_span"

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    invoke-static {p1, v0, v1, v4}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->k()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->M2()Lyi5;

    move-result-object v4

    const-string v5, "disappear_actions"

    invoke-static {p1, v0, v5, v1, v4}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->o:Ljava/util/List;

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v4

    const-string v5, "doubletap_actions"

    invoke-static {p1, v0, v5, v1, v4}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->p:Lcom/yandex/div2/DivText$Ellipsis;

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->X7()Lyi5;

    move-result-object v4

    const-string v5, "ellipsis"

    invoke-static {p1, v0, v5, v1, v4}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->getExtensions()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->Y2()Lyi5;

    move-result-object v4

    const-string v5, "extensions"

    invoke-static {p1, v0, v5, v1, v4}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->w3()Lyi5;

    move-result-object v4

    const-string v5, "focus"

    invoke-static {p1, v0, v5, v1, v4}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->s:Lcom/yandex/div/json/expressions/Expression;

    sget-object v4, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v5, "focused_text_color"

    invoke-static {p1, v0, v5, v1, v4}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "font_family"

    iget-object v5, p2, Lcom/yandex/div2/DivText;->t:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v5}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "font_feature_settings"

    iget-object v5, p2, Lcom/yandex/div2/DivText;->u:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v5}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "font_size"

    iget-object v5, p2, Lcom/yandex/div2/DivText;->v:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v5}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->w:Lcom/yandex/div/json/expressions/Expression;

    sget-object v5, Lcom/yandex/div2/DivSizeUnit;->TO_STRING:Le74;

    const-string v6, "font_size_unit"

    invoke-static {p1, v0, v6, v1, v5}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "font_variation_settings"

    iget-object v5, p2, Lcom/yandex/div2/DivText;->x:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v5}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->y:Lcom/yandex/div/json/expressions/Expression;

    sget-object v5, Lcom/yandex/div2/DivFontWeight;->TO_STRING:Le74;

    const-string v6, "font_weight"

    invoke-static {p1, v0, v6, v1, v5}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "font_weight_value"

    iget-object v5, p2, Lcom/yandex/div2/DivText;->z:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v5}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->y()Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->F3()Lyi5;

    move-result-object v5

    const-string v6, "functions"

    invoke-static {p1, v0, v6, v1, v5}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v1

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v5

    const-string v6, "height"

    invoke-static {p1, v0, v6, v1, v5}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->C:Ljava/util/List;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v5

    const-string v6, "hover_end_actions"

    invoke-static {p1, v0, v6, v1, v5}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->D:Ljava/util/List;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v5

    const-string v6, "hover_start_actions"

    invoke-static {p1, v0, v6, v1, v5}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    const-string v1, "id"

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v0, v1, v5}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->F:Ljava/util/List;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->g8()Lyi5;

    move-result-object v5

    const-string v6, "images"

    invoke-static {p1, v0, v6, v1, v5}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v1

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->M4()Lyi5;

    move-result-object v5

    const-string v6, "layout_provider"

    invoke-static {p1, v0, v6, v1, v5}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "letter_spacing"

    iget-object v5, p2, Lcom/yandex/div2/DivText;->H:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v5}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "line_height"

    iget-object v5, p2, Lcom/yandex/div2/DivText;->I:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v5}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->J:Ljava/util/List;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v5

    const-string v6, "longtap_actions"

    invoke-static {p1, v0, v6, v1, v5}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v5

    const-string v6, "margins"

    invoke-static {p1, v0, v6, v1, v5}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "max_lines"

    iget-object v5, p2, Lcom/yandex/div2/DivText;->L:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v5}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "min_hidden_lines"

    iget-object v5, p2, Lcom/yandex/div2/DivText;->M:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v5}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v1

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v5

    const-string v6, "paddings"

    invoke-static {p1, v0, v6, v1, v5}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->O:Ljava/util/List;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v5

    const-string v6, "press_end_actions"

    invoke-static {p1, v0, v6, v1, v5}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->P:Ljava/util/List;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v5

    const-string v6, "press_start_actions"

    invoke-static {p1, v0, v6, v1, v5}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->Q:Ljava/util/List;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->s8()Lyi5;

    move-result-object v5

    const-string v6, "ranges"

    invoke-static {p1, v0, v6, v1, v5}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    const-string v1, "reuse_id"

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v5

    invoke-static {p1, v0, v1, v5}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "row_span"

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v5

    invoke-static {p1, v0, v1, v5}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "selectable"

    iget-object v5, p2, Lcom/yandex/div2/DivText;->T:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v5}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->u()Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v5

    const-string v6, "selected_actions"

    invoke-static {p1, v0, v6, v1, v5}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->V:Lcom/yandex/div/json/expressions/Expression;

    sget-object v5, Lcom/yandex/div2/DivLineStyle;->TO_STRING:Le74;

    const-string v6, "strike"

    invoke-static {p1, v0, v6, v1, v5}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->W:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "text"

    invoke-static {p1, v0, v6, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "text_alignment_horizontal"

    iget-object v7, p2, Lcom/yandex/div2/DivText;->X:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v7, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "text_alignment_vertical"

    iget-object v2, p2, Lcom/yandex/div2/DivText;->Y:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2, v3}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "text_color"

    iget-object v2, p2, Lcom/yandex/div2/DivText;->Z:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2, v4}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->a0:Lcom/yandex/div2/DivTextGradient;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->a8()Lyi5;

    move-result-object v2

    const-string v3, "text_gradient"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->M6()Lyi5;

    move-result-object v2

    const-string v3, "text_shadow"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "tighten_width"

    iget-object v2, p2, Lcom/yandex/div2/DivText;->c0:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->h()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->J8()Lyi5;

    move-result-object v2

    const-string v3, "tooltips"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->m()Lcom/yandex/div2/DivTransform;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->V8()Lyi5;

    move-result-object v2

    const-string v3, "transform"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->R1()Lyi5;

    move-result-object v2

    const-string v3, "transition_change"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v2

    const-string v3, "transition_in"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v2

    const-string v3, "transition_out"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->n()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivTransitionTrigger;->TO_STRING:Le74;

    const-string v3, "transition_triggers"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->y(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText;->j0:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivText$Truncate;->TO_STRING:Le74;

    const-string v3, "truncate"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "type"

    invoke-static {p1, v0, v1, v6}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "underline"

    iget-object v2, p2, Lcom/yandex/div2/DivText;->k0:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2, v5}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->w()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Y8()Lyi5;

    move-result-object v2

    const-string v3, "variable_triggers"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->c()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->e9()Lyi5;

    move-result-object v2

    const-string v3, "variables"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivVisibility;->TO_STRING:Le74;

    const-string v3, "visibility"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_action"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_actions"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivText;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p2

    iget-object p0, p0, Lcom/yandex/div2/DivTextJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object p0

    const-string v1, "width"

    invoke-static {p1, v0, v1, p2, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    return-object v0
.end method
