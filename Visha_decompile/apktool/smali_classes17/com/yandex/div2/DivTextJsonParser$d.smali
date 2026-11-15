.class public final Lcom/yandex/div2/DivTextJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTextJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTextJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivTextTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTextTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText;
    .locals 91

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

    new-instance v72, Lcom/yandex/div2/DivText;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->a:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->H()Lyi5;

    move-result-object v6

    const-string v4, "accessibility"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/yandex/div2/DivAccessibility;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->b:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "action"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/yandex/div2/DivAction;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->c:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->p1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->n1()Lyi5;

    move-result-object v6

    const-string v4, "action_animation"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAnimation;

    if-nez v1, :cond_0

    sget-object v1, Lcom/yandex/div2/DivTextJsonParser;->b:Lcom/yandex/div2/DivAnimation;

    :cond_0
    move-object v14, v1

    const-string v1, "JsonFieldResolver.resolv\u2026N_ANIMATION_DEFAULT_VALUE"

    invoke-static {v14, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->d:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v15

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->e:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->t:Lzbb;

    sget-object v16, Lcom/yandex/div2/DivAlignmentHorizontal;->FROM_STRING:Le74;

    const-string v4, "alignment_horizontal"

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v17

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->f:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->u:Lzbb;

    sget-object v18, Lcom/yandex/div2/DivAlignmentVertical;->FROM_STRING:Le74;

    const-string v4, "alignment_vertical"

    move-object/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v19

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->g:Ltp3;

    sget-object v20, Lacb;->d:Lzbb;

    sget-object v21, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v7, Lcom/yandex/div2/DivTextJsonParser;->D:Lpnb;

    sget-object v22, Lcom/yandex/div2/DivTextJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "alpha"

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v8, v22

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v22, v1

    :goto_0
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->h:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q1()Lyi5;

    move-result-object v6

    const-string v4, "animators"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v23

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->i:Ltp3;

    sget-object v24, Lacb;->a:Lzbb;

    sget-object v25, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v4, "auto_ellipsize"

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v26

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->j:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->E1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->C1()Lyi5;

    move-result-object v6

    const-string v4, "background"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v27

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->k:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->K1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->I1()Lyi5;

    move-result-object v6

    const-string v4, "border"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Lcom/yandex/div2/DivBorder;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->l:Ltp3;

    sget-object v8, Lcom/yandex/div2/DivTextJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "capture_focus_on_action"

    move-object/from16 v1, p1

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    move-object/from16 v29, v8

    goto :goto_1

    :cond_2
    move-object/from16 v29, v1

    :goto_1
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->m:Ltp3;

    sget-object v30, Lacb;->b:Lzbb;

    sget-object v31, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/DivTextJsonParser;->E:Lpnb;

    const-string v4, "column_span"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v30

    move-object/from16 v6, v31

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v32

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->n:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->O2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M2()Lyi5;

    move-result-object v6

    const-string v4, "disappear_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v33

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->o:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "doubletap_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v34

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->p:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Z7()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X7()Lyi5;

    move-result-object v6

    const-string v4, "ellipsis"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v35, v1

    check-cast v35, Lcom/yandex/div2/DivText$Ellipsis;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->q:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->a3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y2()Lyi5;

    move-result-object v6

    const-string v4, "extensions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v36

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->r:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w3()Lyi5;

    move-result-object v6

    const-string v4, "focus"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v37, v1

    check-cast v37, Lcom/yandex/div2/DivFocus;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->s:Ltp3;

    sget-object v38, Lacb;->f:Lzbb;

    sget-object v39, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v4, "focused_text_color"

    move-object/from16 v1, p1

    move-object/from16 v5, v38

    move-object/from16 v6, v39

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v40

    iget-object v1, v10, Lcom/yandex/div2/DivTextTemplate;->t:Ltp3;

    sget-object v8, Lacb;->c:Lzbb;

    const-string v2, "font_family"

    invoke-static {v9, v1, v11, v2, v8}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v41

    iget-object v1, v10, Lcom/yandex/div2/DivTextTemplate;->u:Ltp3;

    const-string v2, "font_feature_settings"

    invoke-static {v9, v1, v11, v2, v8}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v42

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->v:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivTextJsonParser;->F:Lpnb;

    sget-object v43, Lcom/yandex/div2/DivTextJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_size"

    move-object/from16 v1, p1

    move-object/from16 v5, v30

    move-object/from16 v6, v31

    move-object/from16 v44, v15

    move-object v15, v8

    move-object/from16 v8, v43

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v43, v1

    :goto_2
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->w:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->v:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v8, Lcom/yandex/div2/DivTextJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_size_unit"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_4

    move-object/from16 v45, v8

    goto :goto_3

    :cond_4
    move-object/from16 v45, v1

    :goto_3
    iget-object v1, v10, Lcom/yandex/div2/DivTextTemplate;->x:Ltp3;

    const-string v2, "font_variation_settings"

    sget-object v3, Lacb;->h:Lzbb;

    invoke-static {v9, v1, v11, v2, v3}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v46

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->y:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->w:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivFontWeight;->FROM_STRING:Le74;

    sget-object v8, Lcom/yandex/div2/DivTextJsonParser;->g:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "font_weight"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_5

    move-object/from16 v47, v8

    goto :goto_4

    :cond_5
    move-object/from16 v47, v1

    :goto_4
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->z:Ltp3;

    const-string v4, "font_weight_value"

    sget-object v7, Lcom/yandex/div2/DivTextJsonParser;->G:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v30

    move-object/from16 v6, v31

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v48

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->A:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->H3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->F3()Lyi5;

    move-result-object v6

    const-string v4, "functions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v49

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->B:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X6()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v6

    const-string v4, "height"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivSize;

    if-nez v1, :cond_6

    sget-object v1, Lcom/yandex/div2/DivTextJsonParser;->h:Lcom/yandex/div2/DivSize$d;

    :cond_6
    move-object v8, v1

    const-string v1, "JsonFieldResolver.resolv\u2026) ?: HEIGHT_DEFAULT_VALUE"

    invoke-static {v8, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->C:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "hover_end_actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v50

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->D:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "hover_start_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v51

    iget-object v1, v10, Lcom/yandex/div2/DivTextTemplate;->E:Ltp3;

    const-string v2, "id"

    invoke-static {v9, v1, v11, v2}, Lsa5;->m(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v52, v1

    check-cast v52, Ljava/lang/String;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->F:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->i8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->g8()Lyi5;

    move-result-object v6

    const-string v4, "images"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v53

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->G:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->O4()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M4()Lyi5;

    move-result-object v6

    const-string v4, "layout_provider"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v54, v1

    check-cast v54, Lcom/yandex/div2/DivLayoutProvider;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->H:Ltp3;

    sget-object v55, Lcom/yandex/div2/DivTextJsonParser;->i:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "letter_spacing"

    move-object/from16 v1, p1

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v55

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v55, v1

    :goto_5
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->I:Ltp3;

    const-string v4, "line_height"

    sget-object v7, Lcom/yandex/div2/DivTextJsonParser;->H:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v30

    move-object/from16 v6, v31

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v56

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->J:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "longtap_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v57

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->K:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v6

    const-string v4, "margins"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v58, v1

    check-cast v58, Lcom/yandex/div2/DivEdgeInsets;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->L:Ltp3;

    const-string v4, "max_lines"

    sget-object v7, Lcom/yandex/div2/DivTextJsonParser;->I:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v5, v30

    move-object/from16 v6, v31

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v59

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->M:Ltp3;

    const-string v4, "min_hidden_lines"

    sget-object v7, Lcom/yandex/div2/DivTextJsonParser;->J:Lpnb;

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v60

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->N:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v6

    const-string v4, "paddings"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v61, v1

    check-cast v61, Lcom/yandex/div2/DivEdgeInsets;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->O:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "press_end_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v62

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->P:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "press_start_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v63

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->Q:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s8()Lyi5;

    move-result-object v6

    const-string v4, "ranges"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v64

    iget-object v1, v10, Lcom/yandex/div2/DivTextTemplate;->R:Ltp3;

    const-string v2, "reuse_id"

    invoke-static {v9, v1, v11, v2, v15}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v65

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->S:Ltp3;

    const-string v4, "row_span"

    sget-object v7, Lcom/yandex/div2/DivTextJsonParser;->K:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v5, v30

    move-object/from16 v6, v31

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v66

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->T:Ltp3;

    sget-object v20, Lcom/yandex/div2/DivTextJsonParser;->j:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "selectable"

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v20

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_8

    move-object/from16 v67, v20

    goto :goto_6

    :cond_8
    move-object/from16 v67, v1

    :goto_6
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->U:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "selected_actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v68

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->V:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->x:Lzbb;

    sget-object v20, Lcom/yandex/div2/DivLineStyle;->FROM_STRING:Le74;

    sget-object v21, Lcom/yandex/div2/DivTextJsonParser;->k:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "strike"

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_9

    move-object/from16 v69, v21

    goto :goto_7

    :cond_9
    move-object/from16 v69, v1

    :goto_7
    iget-object v1, v10, Lcom/yandex/div2/DivTextTemplate;->W:Ltp3;

    const-string v2, "text"

    invoke-static {v9, v1, v11, v2, v15}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v15

    const-string v1, "resolveExpression(contex\u2026ext\", TYPE_HELPER_STRING)"

    invoke-static {v15, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->X:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->y:Lzbb;

    sget-object v21, Lcom/yandex/div2/DivTextJsonParser;->l:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "text_alignment_horizontal"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v6, v16

    move-object/from16 v7, v21

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_a

    move-object/from16 v70, v21

    goto :goto_8

    :cond_a
    move-object/from16 v70, v1

    :goto_8
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->Y:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->z:Lzbb;

    sget-object v16, Lcom/yandex/div2/DivTextJsonParser;->m:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "text_alignment_vertical"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v6, v18

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_b

    move-object/from16 v71, v16

    goto :goto_9

    :cond_b
    move-object/from16 v71, v1

    :goto_9
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->Z:Ltp3;

    sget-object v16, Lcom/yandex/div2/DivTextJsonParser;->n:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "text_color"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v38

    move-object/from16 v6, v39

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_c

    move-object/from16 v73, v16

    goto :goto_a

    :cond_c
    move-object/from16 v73, v1

    :goto_a
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->a0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->c8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->a8()Lyi5;

    move-result-object v6

    const-string v4, "text_gradient"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v74, v1

    check-cast v74, Lcom/yandex/div2/DivTextGradient;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->b0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->O6()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M6()Lyi5;

    move-result-object v6

    const-string v4, "text_shadow"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v75, v1

    check-cast v75, Lcom/yandex/div2/DivShadow;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->c0:Ltp3;

    sget-object v16, Lcom/yandex/div2/DivTextJsonParser;->o:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "tighten_width"

    move-object/from16 v1, p1

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_d

    move-object/from16 v76, v16

    goto :goto_b

    :cond_d
    move-object/from16 v76, v1

    :goto_b
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->d0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->L8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J8()Lyi5;

    move-result-object v6

    const-string v4, "tooltips"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v77

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->e0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V8()Lyi5;

    move-result-object v6

    const-string v4, "transform"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v78, v1

    check-cast v78, Lcom/yandex/div2/DivTransform;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->f0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->T1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->R1()Lyi5;

    move-result-object v6

    const-string v4, "transition_change"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v79, v1

    check-cast v79, Lcom/yandex/div2/DivChangeTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->g0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v6

    const-string v4, "transition_in"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v80, v1

    check-cast v80, Lcom/yandex/div2/DivAppearanceTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->h0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v6

    const-string v4, "transition_out"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v81, v1

    check-cast v81, Lcom/yandex/div2/DivAppearanceTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->i0:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTransitionTrigger;->FROM_STRING:Le74;

    sget-object v6, Lcom/yandex/div2/DivTextJsonParser;->L:Lhm5;

    const-string v4, "transition_triggers"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->z(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lhm5;)Ljava/util/List;

    move-result-object v82

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->j0:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->A:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivText$Truncate;->FROM_STRING:Le74;

    sget-object v16, Lcom/yandex/div2/DivTextJsonParser;->p:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "truncate"

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_e

    move-object/from16 v83, v16

    goto :goto_c

    :cond_e
    move-object/from16 v83, v1

    :goto_c
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->k0:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->B:Lzbb;

    sget-object v16, Lcom/yandex/div2/DivTextJsonParser;->q:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "underline"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v6, v20

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_f

    move-object/from16 v84, v16

    goto :goto_d

    :cond_f
    move-object/from16 v84, v1

    :goto_d
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->l0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->a9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y8()Lyi5;

    move-result-object v6

    const-string v4, "variable_triggers"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v85

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->m0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->g9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->e9()Lyi5;

    move-result-object v6

    const-string v4, "variables"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v86

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->n0:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->C:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivVisibility;->FROM_STRING:Le74;

    sget-object v16, Lcom/yandex/div2/DivTextJsonParser;->r:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "visibility"

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_10

    move-object/from16 v87, v16

    goto :goto_e

    :cond_10
    move-object/from16 v87, v1

    :goto_e
    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->o0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v6

    const-string v4, "visibility_action"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v88, v1

    check-cast v88, Lcom/yandex/div2/DivVisibilityAction;

    iget-object v2, v10, Lcom/yandex/div2/DivTextTemplate;->p0:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v6

    const-string v4, "visibility_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v89

    iget-object v1, v10, Lcom/yandex/div2/DivTextTemplate;->q0:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->X6()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/DivTextJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v5

    const-string v3, "width"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivSize;

    if-nez v0, :cond_11

    sget-object v0, Lcom/yandex/div2/DivTextJsonParser;->s:Lcom/yandex/div2/DivSize$c;

    :cond_11
    const-string v1, "JsonFieldResolver.resolv\u2026r) ?: WIDTH_DEFAULT_VALUE"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v72

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v6, v44

    move-object/from16 v7, v17

    move-object v1, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    move-object/from16 v90, v15

    move-object/from16 v15, v32

    move-object/from16 v16, v33

    move-object/from16 v17, v34

    move-object/from16 v18, v35

    move-object/from16 v19, v36

    move-object/from16 v20, v37

    move-object/from16 v21, v40

    move-object/from16 v22, v41

    move-object/from16 v23, v42

    move-object/from16 v24, v43

    move-object/from16 v25, v45

    move-object/from16 v26, v46

    move-object/from16 v27, v47

    move-object/from16 v28, v48

    move-object/from16 v29, v49

    move-object/from16 v30, v1

    move-object/from16 v31, v50

    move-object/from16 v32, v51

    move-object/from16 v33, v52

    move-object/from16 v34, v53

    move-object/from16 v35, v54

    move-object/from16 v36, v55

    move-object/from16 v37, v56

    move-object/from16 v38, v57

    move-object/from16 v39, v58

    move-object/from16 v40, v59

    move-object/from16 v41, v60

    move-object/from16 v42, v61

    move-object/from16 v43, v62

    move-object/from16 v44, v63

    move-object/from16 v45, v64

    move-object/from16 v46, v65

    move-object/from16 v47, v66

    move-object/from16 v48, v67

    move-object/from16 v49, v68

    move-object/from16 v50, v69

    move-object/from16 v51, v90

    move-object/from16 v52, v70

    move-object/from16 v53, v71

    move-object/from16 v54, v73

    move-object/from16 v55, v74

    move-object/from16 v56, v75

    move-object/from16 v57, v76

    move-object/from16 v58, v77

    move-object/from16 v59, v78

    move-object/from16 v60, v79

    move-object/from16 v61, v80

    move-object/from16 v62, v81

    move-object/from16 v63, v82

    move-object/from16 v64, v83

    move-object/from16 v65, v84

    move-object/from16 v66, v85

    move-object/from16 v67, v86

    move-object/from16 v68, v87

    move-object/from16 v69, v88

    move-object/from16 v70, v89

    move-object/from16 v71, v0

    invoke-direct/range {v2 .. v71}, Lcom/yandex/div2/DivText;-><init>(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div2/DivAction;Lcom/yandex/div2/DivAnimation;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivText$Ellipsis;Ljava/util/List;Lcom/yandex/div2/DivFocus;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivSize;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTextGradient;Lcom/yandex/div2/DivShadow;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)V

    return-object v72
.end method
