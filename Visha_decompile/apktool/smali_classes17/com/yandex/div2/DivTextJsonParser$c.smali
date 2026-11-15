.class public final Lcom/yandex/div2/DivTextJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTextJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTextJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivTextTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTextJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivTextTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivTextTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextTemplate;
    .locals 92

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

    new-instance v83, Lcom/yandex/div2/DivTextTemplate;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->a:Ltp3;

    move-object v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->I()Lyi5;

    move-result-object v7

    const-string v4, "accessibility"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v14

    const-string v2, "readOptionalField(contex\u2026bilityJsonTemplateParser)"

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->b:Ltp3;

    move-object v6, v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v7

    const-string v4, "action"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v15

    const-string v9, "readOptionalField(contex\u2026ActionJsonTemplateParser)"

    invoke-static {v15, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->c:Ltp3;

    move-object v6, v2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->o1()Lyi5;

    move-result-object v7

    const-string v4, "action_animation"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalField(contex\u2026mationJsonTemplateParser)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->d:Ltp3;

    move-object v6, v2

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v7

    const-string v4, "actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalListField(co\u2026ActionJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->t:Lzbb;

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->e:Ltp3;

    move-object/from16 v16, v2

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    sget-object v17, Lcom/yandex/div2/DivAlignmentHorizontal;->FROM_STRING:Le74;

    const-string v4, "alignment_horizontal"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object v13, v6

    move v6, v11

    move-object/from16 v18, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v7, "readOptionalFieldWithExp\u2026ntHorizontal.FROM_STRING)"

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->u:Lzbb;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->f:Ltp3;

    move-object/from16 v19, v2

    goto :goto_5

    :cond_5
    const/16 v19, 0x0

    :goto_5
    sget-object v20, Lcom/yandex/div2/DivAlignmentVertical;->FROM_STRING:Le74;

    const-string v4, "alignment_vertical"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v21, v15

    move-object v15, v7

    move-object/from16 v7, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v20

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v7, "readOptionalFieldWithExp\u2026mentVertical.FROM_STRING)"

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v22, Lacb;->d:Lzbb;

    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->g:Ltp3;

    move-object/from16 v23, v2

    goto :goto_6

    :cond_6
    const/16 v23, 0x0

    :goto_6
    sget-object v24, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v25, Lcom/yandex/div2/DivTextJsonParser;->D:Lpnb;

    const-string v4, "alpha"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v22

    move v6, v11

    move-object/from16 v26, v14

    move-object v14, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v24

    move-object/from16 v84, v9

    move-object/from16 v9, v25

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_DOUBLE, ALPHA_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->h:Ltp3;

    move-object v6, v2

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    :goto_7
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r1()Lyi5;

    move-result-object v7

    const-string v4, "animators"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalListField(co\u2026imatorJsonTemplateParser)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v25, Lacb;->a:Lzbb;

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->i:Ltp3;

    move-object v7, v2

    goto :goto_8

    :cond_8
    const/4 v7, 0x0

    :goto_8
    sget-object v27, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v4, "auto_ellipsize"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v25

    move v6, v11

    move-object/from16 v28, v8

    move-object/from16 v8, v27

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026llipsize, ANY_TO_BOOLEAN)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->j:Ltp3;

    move-object v6, v2

    goto :goto_9

    :cond_9
    const/4 v6, 0x0

    :goto_9
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->D1()Lyi5;

    move-result-object v7

    const-string v4, "background"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026groundJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_a

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->k:Ltp3;

    move-object v6, v2

    goto :goto_a

    :cond_a
    const/4 v6, 0x0

    :goto_a
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->J1()Lyi5;

    move-result-object v29

    const-string v4, "border"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v30, v7

    move-object/from16 v7, v29

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026BorderJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_b

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->l:Ltp3;

    move-object/from16 v29, v2

    goto :goto_b

    :cond_b
    const/16 v29, 0x0

    :goto_b
    const-string v4, "capture_focus_on_action"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v25

    move v6, v11

    move-object/from16 v31, v7

    move-object/from16 v7, v29

    move-object/from16 v29, v8

    move-object/from16 v8, v27

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026OnAction, ANY_TO_BOOLEAN)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v32, Lacb;->b:Lzbb;

    if-eqz v1, :cond_c

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->m:Ltp3;

    move-object v7, v2

    goto :goto_c

    :cond_c
    const/4 v7, 0x0

    :goto_c
    sget-object v33, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v34, Lcom/yandex/div2/DivTextJsonParser;->E:Lpnb;

    const-string v4, "column_span"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v32

    move v6, v11

    move-object/from16 v35, v8

    move-object/from16 v8, v33

    move-object/from16 v36, v9

    move-object/from16 v9, v34

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026T, COLUMN_SPAN_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->n:Ltp3;

    move-object v6, v2

    goto :goto_d

    :cond_d
    const/4 v6, 0x0

    :goto_d
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N2()Lyi5;

    move-result-object v7

    const-string v4, "disappear_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    invoke-static {v8, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_e

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->o:Ltp3;

    move-object v6, v2

    goto :goto_e

    :cond_e
    const/4 v6, 0x0

    :goto_e
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v7

    const-string v4, "doubletap_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_f

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->p:Ltp3;

    move-object v6, v2

    goto :goto_f

    :cond_f
    const/4 v6, 0x0

    :goto_f
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Y7()Lyi5;

    move-result-object v34

    const-string v4, "ellipsis"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v37, v7

    move-object/from16 v7, v34

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026lipsisJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->q:Ltp3;

    move-object v6, v2

    goto :goto_10

    :cond_10
    const/4 v6, 0x0

    :goto_10
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z2()Lyi5;

    move-result-object v34

    const-string v4, "extensions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v38, v7

    move-object/from16 v7, v34

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026ensionJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_11

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->r:Ltp3;

    move-object v6, v2

    goto :goto_11

    :cond_11
    const/4 v6, 0x0

    :goto_11
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x3()Lyi5;

    move-result-object v34

    const-string v4, "focus"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v39, v7

    move-object/from16 v7, v34

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026vFocusJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v34, Lacb;->f:Lzbb;

    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->s:Ltp3;

    move-object/from16 v40, v2

    goto :goto_12

    :cond_12
    const/16 v40, 0x0

    :goto_12
    sget-object v41, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v4, "focused_text_color"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v34

    move v6, v11

    move-object/from16 v42, v7

    move-object/from16 v7, v40

    move-object/from16 v40, v8

    move-object/from16 v8, v41

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v7, "readOptionalFieldWithExp\u2026lor, STRING_TO_COLOR_INT)"

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v43, Lacb;->c:Lzbb;

    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->t:Ltp3;

    move-object/from16 v44, v2

    goto :goto_13

    :cond_13
    const/16 v44, 0x0

    :goto_13
    const-string v4, "font_family"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v43

    move v6, v11

    move-object/from16 v85, v7

    move-object/from16 v7, v44

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalFieldWithExp\u2026ride, parent?.fontFamily)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->u:Ltp3;

    move-object/from16 v44, v2

    goto :goto_14

    :cond_14
    const/16 v44, 0x0

    :goto_14
    const-string v4, "font_feature_settings"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v43

    move v6, v11

    move-object/from16 v45, v7

    move-object/from16 v7, v44

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalFieldWithExp\u2026ent?.fontFeatureSettings)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_15

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->v:Ltp3;

    move-object/from16 v44, v2

    goto :goto_15

    :cond_15
    const/16 v44, 0x0

    :goto_15
    sget-object v46, Lcom/yandex/div2/DivTextJsonParser;->F:Lpnb;

    const-string v4, "font_size"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v32

    move v6, v11

    move-object/from16 v47, v7

    move-object/from16 v7, v44

    move-object/from16 v44, v8

    move-object/from16 v8, v33

    move-object/from16 v48, v9

    move-object/from16 v9, v46

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026INT, FONT_SIZE_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->v:Lzbb;

    if-eqz v1, :cond_16

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->w:Ltp3;

    move-object v7, v2

    goto :goto_16

    :cond_16
    const/4 v7, 0x0

    :goto_16
    sget-object v8, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    const-string v4, "font_size_unit"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026 DivSizeUnit.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->h:Lzbb;

    if-eqz v1, :cond_17

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->x:Ltp3;

    move-object v7, v2

    goto :goto_17

    :cond_17
    const/4 v7, 0x0

    :goto_17
    const-string v4, "font_variation_settings"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalFieldWithExp\u2026t?.fontVariationSettings)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->w:Lzbb;

    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->y:Ltp3;

    move-object/from16 v46, v2

    goto :goto_18

    :cond_18
    const/16 v46, 0x0

    :goto_18
    sget-object v49, Lcom/yandex/div2/DivFontWeight;->FROM_STRING:Le74;

    const-string v4, "font_weight"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v50, v7

    move-object/from16 v7, v46

    move-object/from16 v46, v8

    move-object/from16 v8, v49

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026ivFontWeight.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->z:Ltp3;

    move-object v7, v2

    goto :goto_19

    :cond_19
    const/4 v7, 0x0

    :goto_19
    sget-object v49, Lcom/yandex/div2/DivTextJsonParser;->G:Lpnb;

    const-string v4, "font_weight_value"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v32

    move v6, v11

    move-object/from16 v51, v8

    move-object/from16 v8, v33

    move-object/from16 v52, v9

    move-object/from16 v9, v49

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026T_WEIGHT_VALUE_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1a

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->A:Ltp3;

    move-object v6, v2

    goto :goto_1a

    :cond_1a
    const/4 v6, 0x0

    :goto_1a
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->G3()Lyi5;

    move-result-object v7

    const-string v4, "functions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalListField(co\u2026nctionJsonTemplateParser)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1b

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->B:Ltp3;

    move-object v6, v2

    goto :goto_1b

    :cond_1b
    const/4 v6, 0x0

    :goto_1b
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object v7

    const-string v4, "height"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalField(contex\u2026ivSizeJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1c

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->C:Ltp3;

    move-object/from16 v49, v2

    goto :goto_1c

    :cond_1c
    const/16 v49, 0x0

    :goto_1c
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v53

    const-string v4, "hover_end_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v86, v6

    move-object/from16 v6, v49

    move-object/from16 v49, v7

    move-object/from16 v7, v53

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->D:Ltp3;

    move-object v6, v2

    goto :goto_1d

    :cond_1d
    const/4 v6, 0x0

    :goto_1d
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v53

    const-string v4, "hover_start_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v54, v7

    move-object/from16 v7, v53

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1e

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->E:Ltp3;

    goto :goto_1e

    :cond_1e
    const/4 v2, 0x0

    :goto_1e
    const-string v3, "id"

    invoke-static {v12, v10, v3, v11, v2}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v6

    const-string v2, "readOptionalField(contex\u2026llowOverride, parent?.id)"

    invoke-static {v6, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1f

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->F:Ltp3;

    move-object/from16 v53, v2

    goto :goto_1f

    :cond_1f
    const/16 v53, 0x0

    :goto_1f
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->h8()Lyi5;

    move-result-object v55

    const-string v4, "images"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v56, v6

    move-object/from16 v6, v53

    move-object/from16 v53, v7

    move-object/from16 v7, v55

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026tImageJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_20

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->G:Ltp3;

    move-object v6, v2

    goto :goto_20

    :cond_20
    const/4 v6, 0x0

    :goto_20
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N4()Lyi5;

    move-result-object v55

    const-string v4, "layout_provider"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v57, v7

    move-object/from16 v7, v55

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026oviderJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_21

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->H:Ltp3;

    move-object/from16 v55, v2

    goto :goto_21

    :cond_21
    const/16 v55, 0x0

    :goto_21
    const-string v4, "letter_spacing"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v22

    move v6, v11

    move-object/from16 v58, v7

    move-object/from16 v7, v55

    move-object/from16 v55, v8

    move-object/from16 v8, v24

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026pacing, NUMBER_TO_DOUBLE)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_22

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->I:Ltp3;

    move-object v7, v2

    goto :goto_22

    :cond_22
    const/4 v7, 0x0

    :goto_22
    sget-object v22, Lcom/yandex/div2/DivTextJsonParser;->H:Lpnb;

    const-string v4, "line_height"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v32

    move v6, v11

    move-object/from16 v59, v8

    move-object/from16 v8, v33

    move-object/from16 v60, v9

    move-object/from16 v9, v22

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026T, LINE_HEIGHT_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_23

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->J:Ltp3;

    move-object v6, v2

    goto :goto_23

    :cond_23
    const/4 v6, 0x0

    :goto_23
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v7

    const-string v4, "longtap_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    invoke-static {v8, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_24

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->K:Ltp3;

    move-object v6, v2

    goto :goto_24

    :cond_24
    const/4 v6, 0x0

    :goto_24
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v7

    const-string v4, "margins"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalField(contex\u2026InsetsJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_25

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->L:Ltp3;

    move-object/from16 v22, v2

    goto :goto_25

    :cond_25
    const/16 v22, 0x0

    :goto_25
    sget-object v24, Lcom/yandex/div2/DivTextJsonParser;->I:Lpnb;

    const-string v4, "max_lines"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v32

    move-object v10, v6

    move v6, v11

    move-object/from16 v61, v7

    move-object/from16 v7, v22

    move-object/from16 v62, v8

    move-object/from16 v8, v33

    move-object/from16 v63, v9

    move-object/from16 v9, v24

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026INT, MAX_LINES_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_26

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->M:Ltp3;

    move-object v7, v2

    goto :goto_26

    :cond_26
    const/4 v7, 0x0

    :goto_26
    sget-object v22, Lcom/yandex/div2/DivTextJsonParser;->J:Lpnb;

    const-string v4, "min_hidden_lines"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v32

    move v6, v11

    move-object/from16 v8, v33

    move-object/from16 v64, v9

    move-object/from16 v9, v22

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026N_HIDDEN_LINES_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_27

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->N:Ltp3;

    move-object v6, v2

    goto :goto_27

    :cond_27
    const/4 v6, 0x0

    :goto_27
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v7

    const-string v4, "paddings"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    invoke-static {v8, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_28

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->O:Ltp3;

    move-object v6, v2

    goto :goto_28

    :cond_28
    const/4 v6, 0x0

    :goto_28
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v7

    const-string v4, "press_end_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v10

    invoke-static {v10, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_29

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->P:Ltp3;

    move-object v6, v2

    goto :goto_29

    :cond_29
    const/4 v6, 0x0

    :goto_29
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v7

    const-string v4, "press_start_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2a

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->Q:Ltp3;

    move-object v6, v2

    goto :goto_2a

    :cond_2a
    const/4 v6, 0x0

    :goto_2a
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->t8()Lyi5;

    move-result-object v22

    const-string v4, "ranges"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v65, v7

    move-object/from16 v7, v22

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026tRangeJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2b

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->R:Ltp3;

    move-object/from16 v22, v2

    goto :goto_2b

    :cond_2b
    const/16 v22, 0x0

    :goto_2b
    const-string v4, "reuse_id"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v43

    move v6, v11

    move-object/from16 v66, v7

    move-object/from16 v7, v22

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalFieldWithExp\u2026verride, parent?.reuseId)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2c

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->S:Ltp3;

    move-object/from16 v22, v2

    goto :goto_2c

    :cond_2c
    const/16 v22, 0x0

    :goto_2c
    sget-object v24, Lcom/yandex/div2/DivTextJsonParser;->K:Lpnb;

    const-string v4, "row_span"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v32

    move v6, v11

    move-object/from16 v67, v7

    move-object/from16 v7, v22

    move-object/from16 v68, v8

    move-object/from16 v8, v33

    move-object/from16 v69, v9

    move-object/from16 v9, v24

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_INT, ROW_SPAN_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2d

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->T:Ltp3;

    move-object v7, v2

    goto :goto_2d

    :cond_2d
    const/4 v7, 0x0

    :goto_2d
    const-string v4, "selectable"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v25

    move v6, v11

    move-object/from16 v8, v27

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026lectable, ANY_TO_BOOLEAN)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2e

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->U:Ltp3;

    move-object v6, v2

    goto :goto_2e

    :cond_2e
    const/4 v6, 0x0

    :goto_2e
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v7

    const-string v4, "selected_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->x:Lzbb;

    if-eqz v1, :cond_2f

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->V:Ltp3;

    move-object/from16 v22, v2

    goto :goto_2f

    :cond_2f
    const/16 v22, 0x0

    :goto_2f
    sget-object v24, Lcom/yandex/div2/DivLineStyle;->FROM_STRING:Le74;

    const-string v4, "strike"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v70, v7

    move-object/from16 v7, v22

    move-object/from16 v71, v8

    move-object/from16 v8, v24

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v7, "readOptionalFieldWithExp\u2026DivLineStyle.FROM_STRING)"

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_30

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->W:Ltp3;

    move-object/from16 v22, v2

    goto :goto_30

    :cond_30
    const/16 v22, 0x0

    :goto_30
    const-string v4, "text"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v43

    move v6, v11

    move-object/from16 v72, v9

    move-object v9, v7

    move-object/from16 v7, v22

    invoke-static/range {v2 .. v7}, Lra5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readFieldWithExpression(\u2026owOverride, parent?.text)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->y:Lzbb;

    if-eqz v1, :cond_31

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->X:Ltp3;

    move-object/from16 v22, v2

    goto :goto_31

    :cond_31
    const/16 v22, 0x0

    :goto_31
    const-string v4, "text_alignment_horizontal"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v73, v7

    move-object/from16 v7, v22

    move-object/from16 v74, v8

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    invoke-static {v8, v15}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->z:Lzbb;

    if-eqz v1, :cond_32

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->Y:Ltp3;

    move-object v7, v2

    goto :goto_32

    :cond_32
    const/4 v7, 0x0

    :goto_32
    const-string v4, "text_alignment_vertical"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v75, v8

    move-object/from16 v8, v20

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v15

    invoke-static {v15, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_33

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->Z:Ltp3;

    move-object v7, v2

    goto :goto_33

    :cond_33
    const/4 v7, 0x0

    :goto_33
    const-string v4, "text_color"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v34

    move v6, v11

    move-object/from16 v8, v41

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v14

    move-object/from16 v2, v85

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_34

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->a0:Ltp3;

    move-object v6, v2

    goto :goto_34

    :cond_34
    const/4 v6, 0x0

    :goto_34
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->b8()Lyi5;

    move-result-object v7

    const-string v4, "text_gradient"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalField(contex\u2026adientJsonTemplateParser)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_35

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->b0:Ltp3;

    move-object v6, v2

    goto :goto_35

    :cond_35
    const/4 v6, 0x0

    :goto_35
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N6()Lyi5;

    move-result-object v7

    const-string v4, "text_shadow"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026ShadowJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_36

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->c0:Ltp3;

    move-object/from16 v17, v2

    goto :goto_36

    :cond_36
    const/16 v17, 0x0

    :goto_36
    const-string v4, "tighten_width"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v25

    move v6, v11

    move-object/from16 v76, v7

    move-object/from16 v7, v17

    move-object/from16 v77, v8

    move-object/from16 v8, v27

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026tenWidth, ANY_TO_BOOLEAN)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_37

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->d0:Ltp3;

    move-object v6, v2

    goto :goto_37

    :cond_37
    const/4 v6, 0x0

    :goto_37
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->K8()Lyi5;

    move-result-object v7

    const-string v4, "tooltips"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026ooltipJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_38

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->e0:Ltp3;

    move-object v6, v2

    goto :goto_38

    :cond_38
    const/4 v6, 0x0

    :goto_38
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W8()Lyi5;

    move-result-object v17

    const-string v4, "transform"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v78, v7

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026nsformJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_39

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->f0:Ltp3;

    move-object v6, v2

    goto :goto_39

    :cond_39
    const/4 v6, 0x0

    :goto_39
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->S1()Lyi5;

    move-result-object v17

    const-string v4, "transition_change"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v79, v7

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalField(contex\u2026sitionJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3a

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->g0:Ltp3;

    move-object/from16 v17, v2

    goto :goto_3a

    :cond_3a
    const/16 v17, 0x0

    :goto_3a
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v20

    const-string v4, "transition_in"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v22, v8

    move-object v8, v6

    move-object/from16 v6, v17

    move-object/from16 v80, v7

    move-object/from16 v7, v20

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3b

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->h0:Ltp3;

    move-object v6, v2

    goto :goto_3b

    :cond_3b
    const/4 v6, 0x0

    :goto_3b
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v17

    const-string v4, "transition_out"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v81, v7

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3c

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->i0:Ltp3;

    move-object v6, v2

    goto :goto_3c

    :cond_3c
    const/4 v6, 0x0

    :goto_3c
    sget-object v8, Lcom/yandex/div2/DivTransitionTrigger;->FROM_STRING:Le74;

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->L:Lhm5;

    const-string v2, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>"

    invoke-static {v5, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "transition_triggers"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v17, v5

    move v5, v11

    move-object/from16 v85, v7

    move-object v7, v8

    move-object/from16 v87, v22

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lra5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Le74;Lhm5;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalListField(co\u2026RIGGERS_VALIDATOR.cast())"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->A:Lzbb;

    if-eqz v1, :cond_3d

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->j0:Ltp3;

    move-object v7, v2

    goto :goto_3d

    :cond_3d
    const/4 v7, 0x0

    :goto_3d
    sget-object v17, Lcom/yandex/div2/DivText$Truncate;->FROM_STRING:Le74;

    const-string v4, "truncate"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v88, v8

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026ext.Truncate.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->B:Lzbb;

    if-eqz v1, :cond_3e

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->k0:Ltp3;

    move-object v7, v2

    goto :goto_3e

    :cond_3e
    const/4 v7, 0x0

    :goto_3e
    const-string v4, "underline"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v89, v8

    move-object/from16 v8, v24

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    invoke-static {v8, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3f

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->l0:Ltp3;

    move-object v6, v2

    goto :goto_3f

    :cond_3f
    const/4 v6, 0x0

    :goto_3f
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z8()Lyi5;

    move-result-object v7

    const-string v4, "variable_triggers"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalListField(co\u2026riggerJsonTemplateParser)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_40

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->m0:Ltp3;

    move-object v6, v2

    goto :goto_40

    :cond_40
    const/4 v6, 0x0

    :goto_40
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->f9()Lyi5;

    move-result-object v7

    const-string v4, "variables"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026riableJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivTextJsonParser;->C:Lzbb;

    if-eqz v1, :cond_41

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->n0:Ltp3;

    move-object/from16 v17, v2

    goto :goto_41

    :cond_41
    const/16 v17, 0x0

    :goto_41
    sget-object v20, Lcom/yandex/div2/DivVisibility;->FROM_STRING:Le74;

    const-string v4, "visibility"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v90, v7

    move-object/from16 v7, v17

    move-object/from16 v91, v8

    move-object/from16 v8, v20

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026ivVisibility.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_42

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->o0:Ltp3;

    move-object v6, v2

    goto :goto_42

    :cond_42
    const/4 v6, 0x0

    :goto_42
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v7

    const-string v4, "visibility_action"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    move-object/from16 v2, v84

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_43

    iget-object v2, v1, Lcom/yandex/div2/DivTextTemplate;->p0:Ltp3;

    move-object v6, v2

    goto :goto_43

    :cond_43
    const/4 v6, 0x0

    :goto_43
    iget-object v2, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v17

    const-string v4, "visibility_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v84, v7

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v6

    invoke-static {v6, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_44

    iget-object v1, v1, Lcom/yandex/div2/DivTextTemplate;->q0:Ltp3;

    move-object v4, v1

    goto :goto_44

    :cond_44
    const/4 v4, 0x0

    :goto_44
    iget-object v0, v0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object v5

    const-string v2, "width"

    move-object v0, v12

    move-object/from16 v1, p3

    move v3, v11

    invoke-static/range {v0 .. v5}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v0

    move-object/from16 v82, v0

    move-object/from16 v1, v86

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v83

    move-object v0, v14

    move-object/from16 v14, v26

    move-object v1, v15

    move-object/from16 v15, v21

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v36

    move-object/from16 v21, v28

    move-object/from16 v22, v29

    move-object/from16 v23, v30

    move-object/from16 v24, v31

    move-object/from16 v25, v35

    move-object/from16 v26, v48

    move-object/from16 v27, v40

    move-object/from16 v28, v37

    move-object/from16 v29, v38

    move-object/from16 v30, v39

    move-object/from16 v31, v42

    move-object/from16 v32, v44

    move-object/from16 v33, v45

    move-object/from16 v34, v47

    move-object/from16 v35, v52

    move-object/from16 v36, v46

    move-object/from16 v37, v50

    move-object/from16 v38, v51

    move-object/from16 v39, v60

    move-object/from16 v40, v55

    move-object/from16 v41, v49

    move-object/from16 v42, v54

    move-object/from16 v43, v53

    move-object/from16 v44, v56

    move-object/from16 v45, v57

    move-object/from16 v46, v58

    move-object/from16 v47, v59

    move-object/from16 v48, v63

    move-object/from16 v49, v62

    move-object/from16 v50, v61

    move-object/from16 v51, v64

    move-object/from16 v52, v69

    move-object/from16 v53, v68

    move-object/from16 v54, v10

    move-object/from16 v55, v65

    move-object/from16 v56, v66

    move-object/from16 v57, v67

    move-object/from16 v58, v72

    move-object/from16 v59, v71

    move-object/from16 v60, v70

    move-object/from16 v61, v74

    move-object/from16 v62, v73

    move-object/from16 v63, v75

    move-object/from16 v64, v1

    move-object/from16 v65, v0

    move-object/from16 v66, v77

    move-object/from16 v67, v76

    move-object/from16 v68, v87

    move-object/from16 v69, v78

    move-object/from16 v70, v79

    move-object/from16 v71, v80

    move-object/from16 v72, v81

    move-object/from16 v73, v85

    move-object/from16 v74, v88

    move-object/from16 v75, v89

    move-object/from16 v76, v91

    move-object/from16 v77, v9

    move-object/from16 v78, v90

    move-object/from16 v79, v8

    move-object/from16 v80, v84

    move-object/from16 v81, v6

    invoke-direct/range {v13 .. v82}, Lcom/yandex/div2/DivTextTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v83
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTextTemplate;)Lorg/json/JSONObject;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->I()Lyi5;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->b:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v2

    const-string v3, "action"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->c:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->o1()Lyi5;

    move-result-object v2

    const-string v3, "action_animation"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->d:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v2

    const-string v3, "actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->e:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivAlignmentHorizontal;->TO_STRING:Le74;

    const-string v3, "alignment_horizontal"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->f:Ltp3;

    sget-object v3, Lcom/yandex/div2/DivAlignmentVertical;->TO_STRING:Le74;

    const-string v4, "alignment_vertical"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "alpha"

    iget-object v4, p2, Lcom/yandex/div2/DivTextTemplate;->g:Ltp3;

    invoke-static {p1, v0, v1, v4}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->h:Ltp3;

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->r1()Lyi5;

    move-result-object v4

    const-string v5, "animators"

    invoke-static {p1, v0, v5, v1, v4}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "auto_ellipsize"

    iget-object v4, p2, Lcom/yandex/div2/DivTextTemplate;->i:Ltp3;

    invoke-static {p1, v0, v1, v4}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->j:Ltp3;

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->D1()Lyi5;

    move-result-object v4

    const-string v5, "background"

    invoke-static {p1, v0, v5, v1, v4}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->k:Ltp3;

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->J1()Lyi5;

    move-result-object v4

    const-string v5, "border"

    invoke-static {p1, v0, v5, v1, v4}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "capture_focus_on_action"

    iget-object v4, p2, Lcom/yandex/div2/DivTextTemplate;->l:Ltp3;

    invoke-static {p1, v0, v1, v4}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "column_span"

    iget-object v4, p2, Lcom/yandex/div2/DivTextTemplate;->m:Ltp3;

    invoke-static {p1, v0, v1, v4}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->n:Ltp3;

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->N2()Lyi5;

    move-result-object v4

    const-string v5, "disappear_actions"

    invoke-static {p1, v0, v5, v1, v4}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->o:Ltp3;

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v4

    const-string v5, "doubletap_actions"

    invoke-static {p1, v0, v5, v1, v4}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->p:Ltp3;

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->Y7()Lyi5;

    move-result-object v4

    const-string v5, "ellipsis"

    invoke-static {p1, v0, v5, v1, v4}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->q:Ltp3;

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->Z2()Lyi5;

    move-result-object v4

    const-string v5, "extensions"

    invoke-static {p1, v0, v5, v1, v4}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->r:Ltp3;

    iget-object v4, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v4}, Lcom/yandex/div2/JsonParserComponent;->x3()Lyi5;

    move-result-object v4

    const-string v5, "focus"

    invoke-static {p1, v0, v5, v1, v4}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->s:Ltp3;

    sget-object v4, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v5, "focused_text_color"

    invoke-static {p1, v0, v5, v1, v4}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "font_family"

    iget-object v5, p2, Lcom/yandex/div2/DivTextTemplate;->t:Ltp3;

    invoke-static {p1, v0, v1, v5}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "font_feature_settings"

    iget-object v5, p2, Lcom/yandex/div2/DivTextTemplate;->u:Ltp3;

    invoke-static {p1, v0, v1, v5}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "font_size"

    iget-object v5, p2, Lcom/yandex/div2/DivTextTemplate;->v:Ltp3;

    invoke-static {p1, v0, v1, v5}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->w:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivSizeUnit;->TO_STRING:Le74;

    const-string v6, "font_size_unit"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "font_variation_settings"

    iget-object v5, p2, Lcom/yandex/div2/DivTextTemplate;->x:Ltp3;

    invoke-static {p1, v0, v1, v5}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->y:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivFontWeight;->TO_STRING:Le74;

    const-string v6, "font_weight"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "font_weight_value"

    iget-object v5, p2, Lcom/yandex/div2/DivTextTemplate;->z:Ltp3;

    invoke-static {p1, v0, v1, v5}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->A:Ltp3;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->G3()Lyi5;

    move-result-object v5

    const-string v6, "functions"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->B:Ltp3;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object v5

    const-string v6, "height"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->C:Ltp3;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v5

    const-string v6, "hover_end_actions"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->D:Ltp3;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v5

    const-string v6, "hover_start_actions"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "id"

    iget-object v5, p2, Lcom/yandex/div2/DivTextTemplate;->E:Ltp3;

    invoke-static {p1, v0, v1, v5}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->F:Ltp3;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->h8()Lyi5;

    move-result-object v5

    const-string v6, "images"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->G:Ltp3;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->N4()Lyi5;

    move-result-object v5

    const-string v6, "layout_provider"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "letter_spacing"

    iget-object v5, p2, Lcom/yandex/div2/DivTextTemplate;->H:Ltp3;

    invoke-static {p1, v0, v1, v5}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "line_height"

    iget-object v5, p2, Lcom/yandex/div2/DivTextTemplate;->I:Ltp3;

    invoke-static {p1, v0, v1, v5}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->J:Ltp3;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v5

    const-string v6, "longtap_actions"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->K:Ltp3;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v5

    const-string v6, "margins"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "max_lines"

    iget-object v5, p2, Lcom/yandex/div2/DivTextTemplate;->L:Ltp3;

    invoke-static {p1, v0, v1, v5}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "min_hidden_lines"

    iget-object v5, p2, Lcom/yandex/div2/DivTextTemplate;->M:Ltp3;

    invoke-static {p1, v0, v1, v5}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->N:Ltp3;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v5

    const-string v6, "paddings"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->O:Ltp3;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v5

    const-string v6, "press_end_actions"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->P:Ltp3;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v5

    const-string v6, "press_start_actions"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->Q:Ltp3;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->t8()Lyi5;

    move-result-object v5

    const-string v6, "ranges"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "reuse_id"

    iget-object v5, p2, Lcom/yandex/div2/DivTextTemplate;->R:Ltp3;

    invoke-static {p1, v0, v1, v5}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "row_span"

    iget-object v5, p2, Lcom/yandex/div2/DivTextTemplate;->S:Ltp3;

    invoke-static {p1, v0, v1, v5}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "selectable"

    iget-object v5, p2, Lcom/yandex/div2/DivTextTemplate;->T:Ltp3;

    invoke-static {p1, v0, v1, v5}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->U:Ltp3;

    iget-object v5, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v5}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v5

    const-string v6, "selected_actions"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->V:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivLineStyle;->TO_STRING:Le74;

    const-string v6, "strike"

    invoke-static {p1, v0, v6, v1, v5}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->W:Ltp3;

    const-string v6, "text"

    invoke-static {p1, v0, v6, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "text_alignment_horizontal"

    iget-object v7, p2, Lcom/yandex/div2/DivTextTemplate;->X:Ltp3;

    invoke-static {p1, v0, v1, v7, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "text_alignment_vertical"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate;->Y:Ltp3;

    invoke-static {p1, v0, v1, v2, v3}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "text_color"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate;->Z:Ltp3;

    invoke-static {p1, v0, v1, v2, v4}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->a0:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->b8()Lyi5;

    move-result-object v2

    const-string v3, "text_gradient"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->b0:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N6()Lyi5;

    move-result-object v2

    const-string v3, "text_shadow"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "tighten_width"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate;->c0:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->d0:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->K8()Lyi5;

    move-result-object v2

    const-string v3, "tooltips"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->e0:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W8()Lyi5;

    move-result-object v2

    const-string v3, "transform"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->f0:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->S1()Lyi5;

    move-result-object v2

    const-string v3, "transition_change"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->g0:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v2

    const-string v3, "transition_in"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->h0:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v2

    const-string v3, "transition_out"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->i0:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivTransitionTrigger;->TO_STRING:Le74;

    const-string v3, "transition_triggers"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->J(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->j0:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivText$Truncate;->TO_STRING:Le74;

    const-string v3, "truncate"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "type"

    invoke-static {p1, v0, v1, v6}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "underline"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate;->k0:Ltp3;

    invoke-static {p1, v0, v1, v2, v5}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->l0:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z8()Lyi5;

    move-result-object v2

    const-string v3, "variable_triggers"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->m0:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->f9()Lyi5;

    move-result-object v2

    const-string v3, "variables"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->n0:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivVisibility;->TO_STRING:Le74;

    const-string v3, "visibility"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->o0:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_action"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate;->p0:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object p2, p2, Lcom/yandex/div2/DivTextTemplate;->q0:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivTextJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object p0

    const-string v1, "width"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
