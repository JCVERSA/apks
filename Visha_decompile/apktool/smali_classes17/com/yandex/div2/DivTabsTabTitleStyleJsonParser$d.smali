.class public final Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabs$TabTitleStyle;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabs$TabTitleStyle;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v1, "context"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "template"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v23, Lcom/yandex/div2/DivTabs$TabTitleStyle;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->a:Ltp3;

    sget-object v12, Lacb;->f:Lzbb;

    sget-object v13, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v8, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "active_background_color"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v12

    move-object v6, v13

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v14, v8

    goto :goto_0

    :cond_0
    move-object v14, v1

    :goto_0
    iget-object v1, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->b:Ltp3;

    sget-object v15, Lacb;->h:Lzbb;

    const-string v2, "active_font_variation_settings"

    invoke-static {v9, v1, v11, v2, v15}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v16

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->c:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->m:Lzbb;

    sget-object v17, Lcom/yandex/div2/DivFontWeight;->FROM_STRING:Le74;

    const-string v4, "active_font_weight"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v18

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->d:Ltp3;

    sget-object v8, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "active_text_color"

    move-object v5, v12

    move-object v6, v13

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v19, v8

    goto :goto_1

    :cond_1
    move-object/from16 v19, v1

    :goto_1
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->e:Ltp3;

    sget-object v20, Lacb;->b:Lzbb;

    sget-object v21, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->r:Lpnb;

    sget-object v22, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "animation_duration"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v8, v22

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v22, v1

    :goto_2
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->f:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->n:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivTabs$TabTitleStyle$AnimationType;->FROM_STRING:Le74;

    sget-object v8, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "animation_type"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v24, v8

    goto :goto_3

    :cond_3
    move-object/from16 v24, v1

    :goto_3
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->g:Ltp3;

    const-string v4, "corner_radius"

    sget-object v7, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->s:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v25

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->h:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->r2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->p2()Lyi5;

    move-result-object v6

    const-string v4, "corners_radius"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/yandex/div2/DivCornersRadius;

    iget-object v1, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->i:Ltp3;

    const-string v2, "font_family"

    sget-object v3, Lacb;->c:Lzbb;

    invoke-static {v9, v1, v11, v2, v3}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v27

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->j:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->t:Lpnb;

    sget-object v28, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_size"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v8, v28

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v28, v1

    :goto_4
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->k:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->o:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v8, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->g:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_size_unit"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_5

    move-object/from16 v29, v8

    goto :goto_5

    :cond_5
    move-object/from16 v29, v1

    :goto_5
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->l:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->p:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->h:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_weight"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v6, v17

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_6

    move-object/from16 v30, v8

    goto :goto_6

    :cond_6
    move-object/from16 v30, v1

    :goto_6
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->m:Ltp3;

    const-string v4, "inactive_background_color"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v12

    move-object v6, v13

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v31

    iget-object v1, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->n:Ltp3;

    const-string v2, "inactive_font_variation_settings"

    invoke-static {v9, v1, v11, v2, v15}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v32

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->o:Ltp3;

    const-string v4, "inactive_font_weight"

    sget-object v5, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->q:Lzbb;

    move-object/from16 v1, p1

    move-object/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v17

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->p:Ltp3;

    sget-object v8, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->i:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "inactive_text_color"

    move-object v5, v12

    move-object v6, v13

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_7

    move-object/from16 v33, v8

    goto :goto_7

    :cond_7
    move-object/from16 v33, v1

    :goto_7
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->q:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->u:Lpnb;

    sget-object v12, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->j:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "item_spacing"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object v8, v12

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_8

    move-object/from16 v34, v12

    goto :goto_8

    :cond_8
    move-object/from16 v34, v1

    :goto_8
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->r:Ltp3;

    sget-object v5, Lacb;->d:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v8, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->k:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "letter_spacing"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_9

    move-object/from16 v35, v8

    goto :goto_9

    :cond_9
    move-object/from16 v35, v1

    :goto_9
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->s:Ltp3;

    const-string v4, "line_height"

    sget-object v7, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->v:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v21

    iget-object v1, v10, Lcom/yandex/div2/DivTabsTemplate$TabTitleStyleTemplate;->t:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v5

    const-string v3, "paddings"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivEdgeInsets;

    if-nez v0, :cond_a

    sget-object v0, Lcom/yandex/div2/DivTabsTabTitleStyleJsonParser;->l:Lcom/yandex/div2/DivEdgeInsets;

    :cond_a
    const-string v1, "JsonFieldResolver.resolv\u2026?: PADDINGS_DEFAULT_VALUE"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v23

    move-object v3, v14

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v22

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v16, v32

    move-object/from16 v18, v33

    move-object/from16 v19, v34

    move-object/from16 v20, v35

    move-object/from16 v22, v0

    invoke-direct/range {v2 .. v22}, Lcom/yandex/div2/DivTabs$TabTitleStyle;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCornersRadius;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;)V

    return-object v23
.end method
