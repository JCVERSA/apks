.class public final Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabs$TabTitleStyle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivTabs$TabTitleStyle;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabs$TabTitleStyle;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v1, "context"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v23, Lcom/yandex/div2/DivTabs$TabTitleStyle;

    sget-object v10, Lacb;->f:Lzbb;

    sget-object v11, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v7, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "active_background_color"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v10

    move-object v5, v11

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v12, v7

    goto :goto_0

    :cond_0
    move-object v12, v1

    :goto_0
    sget-object v13, Lacb;->h:Lzbb;

    const-string v1, "active_font_variation_settings"

    invoke-static {v8, v9, v1, v13}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v14

    sget-object v1, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->m:Lzbb;

    sget-object v15, Lcom/yandex/div2/DivFontWeight;->FROM_STRING:Le74;

    const-string v2, "active_font_weight"

    invoke-static {v8, v9, v2, v1, v15}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v16

    sget-object v7, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "active_text_color"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v10

    move-object v5, v11

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v17, v7

    goto :goto_1

    :cond_1
    move-object/from16 v17, v1

    :goto_1
    sget-object v18, Lacb;->b:Lzbb;

    sget-object v19, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->r:Lpnb;

    sget-object v20, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "animation_duration"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v20, v1

    :goto_2
    sget-object v4, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->n:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivTabs$TabTitleStyle$AnimationType;->FROM_STRING:Le74;

    sget-object v7, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "animation_type"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v21, v7

    goto :goto_3

    :cond_3
    move-object/from16 v21, v1

    :goto_3
    const-string v3, "corner_radius"

    sget-object v6, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->s:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v22

    iget-object v1, v0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->p2()Lyi5;

    move-result-object v1

    const-string v2, "corners_radius"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/yandex/div2/DivCornersRadius;

    const-string v1, "font_family"

    sget-object v2, Lacb;->c:Lzbb;

    invoke-static {v8, v9, v1, v2}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v25

    sget-object v6, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->t:Lpnb;

    sget-object v26, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "font_size"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, v26

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v26, v1

    :goto_4
    sget-object v4, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->o:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v7, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->g:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "font_size_unit"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_5

    move-object/from16 v27, v7

    goto :goto_5

    :cond_5
    move-object/from16 v27, v1

    :goto_5
    sget-object v4, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->p:Lzbb;

    sget-object v7, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->h:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "font_weight"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v5, v15

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_6

    move-object/from16 v28, v7

    goto :goto_6

    :cond_6
    move-object/from16 v28, v1

    :goto_6
    const-string v1, "inactive_background_color"

    invoke-static {v8, v9, v1, v10, v11}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v29

    const-string v1, "inactive_font_variation_settings"

    invoke-static {v8, v9, v1, v13}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v30

    const-string v1, "inactive_font_weight"

    sget-object v2, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->q:Lzbb;

    invoke-static {v8, v9, v1, v2, v15}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v31

    sget-object v7, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->i:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "inactive_text_color"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v10

    move-object v5, v11

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_7

    move-object/from16 v32, v7

    goto :goto_7

    :cond_7
    move-object/from16 v32, v1

    :goto_7
    sget-object v6, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->u:Lpnb;

    sget-object v10, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->j:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "item_spacing"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object v7, v10

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_8

    move-object/from16 v33, v10

    goto :goto_8

    :cond_8
    move-object/from16 v33, v1

    :goto_8
    sget-object v4, Lacb;->d:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v7, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->k:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "letter_spacing"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_9

    move-object/from16 v34, v7

    goto :goto_9

    :cond_9
    move-object/from16 v34, v1

    :goto_9
    const-string v3, "line_height"

    sget-object v6, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->v:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    invoke-static/range {v1 .. v6}, Lpa5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    iget-object v0, v0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v0

    const-string v2, "paddings"

    invoke-static {v8, v9, v2, v0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivEdgeInsets;

    if-nez v0, :cond_a

    sget-object v0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->l:Lcom/yandex/div2/DivEdgeInsets;

    :cond_a
    const-string v2, "JsonPropertyParser.readO\u2026?: PADDINGS_DEFAULT_VALUE"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v23

    move-object v3, v12

    move-object v4, v14

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    move-object/from16 v15, v29

    move-object/from16 v16, v30

    move-object/from16 v17, v31

    move-object/from16 v18, v32

    move-object/from16 v19, v33

    move-object/from16 v20, v34

    move-object/from16 v21, v1

    move-object/from16 v22, v0

    invoke-direct/range {v2 .. v22}, Lcom/yandex/div2/DivTabs$TabTitleStyle;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCornersRadius;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;)V

    return-object v23
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTabs$TabTitleStyle;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->a:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v3, "active_background_color"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "active_font_variation_settings"

    iget-object v3, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v3}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->c:Lcom/yandex/div/json/expressions/Expression;

    sget-object v3, Lcom/yandex/div2/DivFontWeight;->TO_STRING:Le74;

    const-string v4, "active_font_weight"

    invoke-static {p1, v0, v4, v1, v3}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "active_text_color"

    iget-object v4, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v4, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "animation_duration"

    iget-object v4, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v4}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->f:Lcom/yandex/div/json/expressions/Expression;

    sget-object v4, Lcom/yandex/div2/DivTabs$TabTitleStyle$AnimationType;->TO_STRING:Le74;

    const-string v5, "animation_type"

    invoke-static {p1, v0, v5, v1, v4}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "corner_radius"

    iget-object v4, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v4}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    iget-object v4, p0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->p2()Lyi5;

    move-result-object v4

    const-string v5, "corners_radius"

    invoke-static {p1, v0, v5, v1, v4}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "font_family"

    iget-object v4, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->i:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v4}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "font_size"

    iget-object v4, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v4}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->k:Lcom/yandex/div/json/expressions/Expression;

    sget-object v4, Lcom/yandex/div2/DivSizeUnit;->TO_STRING:Le74;

    const-string v5, "font_size_unit"

    invoke-static {p1, v0, v5, v1, v4}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "font_weight"

    iget-object v4, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->l:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v4, v3}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "inactive_background_color"

    iget-object v4, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->m:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v4, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "inactive_font_variation_settings"

    iget-object v4, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->n:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v4}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "inactive_font_weight"

    iget-object v4, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v4, v3}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "inactive_text_color"

    iget-object v3, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v3, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "item_spacing"

    iget-object v2, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->q:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "letter_spacing"

    iget-object v2, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->r:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "line_height"

    iget-object v2, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->s:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object p2, p2, Lcom/yandex/div2/DivTabs$TabTitleStyle;->t:Lcom/yandex/div2/DivEdgeInsets;

    iget-object p0, p0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object p0

    const-string v1, "paddings"

    invoke-static {p1, v0, v1, p2, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    return-object v0
.end method
