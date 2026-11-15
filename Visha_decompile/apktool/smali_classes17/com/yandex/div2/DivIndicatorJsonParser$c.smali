.class public final Lcom/yandex/div2/DivIndicatorJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivIndicatorJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivIndicatorTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivIndicatorJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivIndicatorTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivIndicatorTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivIndicatorJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivIndicatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivIndicatorTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivIndicatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivIndicatorTemplate;
    .locals 60

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

    new-instance v58, Lcom/yandex/div2/DivIndicatorTemplate;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->a:Ltp3;

    move-object v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

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

    sget-object v15, Lacb;->f:Lzbb;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    sget-object v16, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v4, "active_item_color"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object v5, v15

    move v6, v11

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v8, "readOptionalFieldWithExp\u2026lor, STRING_TO_COLOR_INT)"

    invoke-static {v9, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v17, Lacb;->d:Lzbb;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    sget-object v18, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v19, Lcom/yandex/div2/DivIndicatorJsonParser;->q:Lpnb;

    const-string v4, "active_item_size"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v17

    move v6, v11

    move-object v13, v8

    move-object/from16 v8, v18

    move-object/from16 v20, v9

    move-object/from16 v9, v19

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026TIVE_ITEM_SIZE_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->d:Ltp3;

    move-object v6, v2

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v6()Lyi5;

    move-result-object v7

    const-string v4, "active_shape"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v7, "readOptionalField(contex\u2026eShapeJsonTemplateParser)"

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivIndicatorJsonParser;->m:Lzbb;

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->e:Ltp3;

    move-object/from16 v19, v2

    goto :goto_4

    :cond_4
    const/16 v19, 0x0

    :goto_4
    sget-object v21, Lcom/yandex/div2/DivAlignmentHorizontal;->FROM_STRING:Le74;

    const-string v4, "alignment_horizontal"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v22, v14

    move-object v14, v7

    move-object/from16 v7, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v21

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026ntHorizontal.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivIndicatorJsonParser;->n:Lzbb;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->f:Ltp3;

    move-object v7, v2

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    sget-object v21, Lcom/yandex/div2/DivAlignmentVertical;->FROM_STRING:Le74;

    const-string v4, "alignment_vertical"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v23, v8

    move-object/from16 v8, v21

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026mentVertical.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->g:Ltp3;

    move-object v7, v2

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    sget-object v21, Lcom/yandex/div2/DivIndicatorJsonParser;->r:Lpnb;

    const-string v4, "alpha"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v17

    move v6, v11

    move-object/from16 v24, v8

    move-object/from16 v8, v18

    move-object/from16 v25, v9

    move-object/from16 v9, v21

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_DOUBLE, ALPHA_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivIndicatorJsonParser;->o:Lzbb;

    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->h:Ltp3;

    move-object v7, v2

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    :goto_7
    sget-object v8, Lcom/yandex/div2/DivIndicator$Animation;->FROM_STRING:Le74;

    const-string v4, "animation"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026or.Animation.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->i:Ltp3;

    move-object v6, v2

    goto :goto_8

    :cond_8
    const/4 v6, 0x0

    :goto_8
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r1()Lyi5;

    move-result-object v7

    const-string v4, "animators"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026imatorJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->j:Ltp3;

    move-object v6, v2

    goto :goto_9

    :cond_9
    const/4 v6, 0x0

    :goto_9
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->D1()Lyi5;

    move-result-object v21

    const-string v4, "background"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v26, v7

    move-object/from16 v7, v21

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026groundJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_a

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->k:Ltp3;

    move-object v6, v2

    goto :goto_a

    :cond_a
    const/4 v6, 0x0

    :goto_a
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->J1()Lyi5;

    move-result-object v21

    const-string v4, "border"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026BorderJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v21, Lacb;->b:Lzbb;

    if-eqz v1, :cond_b

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->l:Ltp3;

    move-object/from16 v28, v2

    goto :goto_b

    :cond_b
    const/16 v28, 0x0

    :goto_b
    sget-object v29, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v30, Lcom/yandex/div2/DivIndicatorJsonParser;->s:Lpnb;

    const-string v4, "column_span"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v21

    move v6, v11

    move-object/from16 v31, v7

    move-object/from16 v7, v28

    move-object/from16 v28, v8

    move-object/from16 v8, v29

    move-object/from16 v32, v9

    move-object/from16 v9, v30

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026T, COLUMN_SPAN_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_c

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->m:Ltp3;

    move-object v6, v2

    goto :goto_c

    :cond_c
    const/4 v6, 0x0

    :goto_c
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N2()Lyi5;

    move-result-object v7

    const-string v4, "disappear_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v7, "readOptionalListField(co\u2026ActionJsonTemplateParser)"

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->n:Ltp3;

    move-object v6, v2

    goto :goto_d

    :cond_d
    const/4 v6, 0x0

    :goto_d
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z2()Lyi5;

    move-result-object v30

    const-string v4, "extensions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v59, v7

    move-object/from16 v7, v30

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026ensionJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_e

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->o:Ltp3;

    move-object v6, v2

    goto :goto_e

    :cond_e
    const/4 v6, 0x0

    :goto_e
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x3()Lyi5;

    move-result-object v30

    const-string v4, "focus"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v33, v7

    move-object/from16 v7, v30

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026vFocusJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_f

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->p:Ltp3;

    move-object v6, v2

    goto :goto_f

    :cond_f
    const/4 v6, 0x0

    :goto_f
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->G3()Lyi5;

    move-result-object v30

    const-string v4, "functions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v34, v7

    move-object/from16 v7, v30

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026nctionJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->q:Ltp3;

    move-object v6, v2

    goto :goto_10

    :cond_10
    const/4 v6, 0x0

    :goto_10
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object v30

    const-string v4, "height"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v35, v7

    move-object/from16 v7, v30

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalField(contex\u2026ivSizeJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_11

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->r:Ltp3;

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_11
    const-string v3, "id"

    invoke-static {v12, v10, v3, v11, v2}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v5

    const-string v2, "readOptionalField(contex\u2026llowOverride, parent?.id)"

    invoke-static {v5, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->s:Ltp3;

    move-object/from16 v30, v2

    goto :goto_12

    :cond_12
    const/16 v30, 0x0

    :goto_12
    const-string v4, "inactive_item_color"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v36, v5

    move-object v5, v15

    move-object v15, v6

    move v6, v11

    move-object/from16 v37, v7

    move-object/from16 v7, v30

    move-object/from16 v30, v8

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    invoke-static {v8, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->t:Ltp3;

    move-object v6, v2

    goto :goto_13

    :cond_13
    const/4 v6, 0x0

    :goto_13
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v6()Lyi5;

    move-result-object v7

    const-string v4, "inactive_minimum_shape"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v13

    invoke-static {v13, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->u:Ltp3;

    move-object v6, v2

    goto :goto_14

    :cond_14
    const/4 v6, 0x0

    :goto_14
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v6()Lyi5;

    move-result-object v7

    const-string v4, "inactive_shape"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v14}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_15

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->v:Ltp3;

    move-object v6, v2

    goto :goto_15

    :cond_15
    const/4 v6, 0x0

    :goto_15
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Y3()Lyi5;

    move-result-object v14

    const-string v4, "items_placement"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v38, v7

    move-object v7, v14

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v14

    const-string v2, "readOptionalField(contex\u2026cementJsonTemplateParser)"

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_16

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->w:Ltp3;

    move-object v6, v2

    goto :goto_16

    :cond_16
    const/4 v6, 0x0

    :goto_16
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N4()Lyi5;

    move-result-object v7

    const-string v4, "layout_provider"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026oviderJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_17

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->x:Ltp3;

    move-object v6, v2

    goto :goto_17

    :cond_17
    const/4 v6, 0x0

    :goto_17
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v16

    const-string v4, "margins"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v39, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalField(contex\u2026InsetsJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->y:Ltp3;

    move-object/from16 v16, v2

    goto :goto_18

    :cond_18
    const/16 v16, 0x0

    :goto_18
    sget-object v40, Lcom/yandex/div2/DivIndicatorJsonParser;->t:Lpnb;

    const-string v4, "minimum_item_size"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v17

    move-object/from16 v17, v13

    move-object v13, v6

    move v6, v11

    move-object/from16 v41, v7

    move-object/from16 v7, v16

    move-object/from16 v42, v8

    move-object/from16 v8, v18

    move-object/from16 v43, v9

    move-object/from16 v9, v40

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026IMUM_ITEM_SIZE_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->z:Ltp3;

    move-object v6, v2

    goto :goto_19

    :cond_19
    const/4 v6, 0x0

    :goto_19
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v7

    const-string v4, "paddings"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    invoke-static {v8, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1a

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->A:Ltp3;

    goto :goto_1a

    :cond_1a
    const/4 v2, 0x0

    :goto_1a
    const-string v3, "pager_id"

    invoke-static {v12, v10, v3, v11, v2}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v13

    const-string v2, "readOptionalField(contex\u2026verride, parent?.pagerId)"

    invoke-static {v13, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->c:Lzbb;

    if-eqz v1, :cond_1b

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->B:Ltp3;

    move-object v7, v2

    goto :goto_1b

    :cond_1b
    const/4 v7, 0x0

    :goto_1b
    const-string v4, "reuse_id"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalFieldWithExp\u2026verride, parent?.reuseId)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1c

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->C:Ltp3;

    move-object/from16 v16, v2

    goto :goto_1c

    :cond_1c
    const/16 v16, 0x0

    :goto_1c
    sget-object v18, Lcom/yandex/div2/DivIndicatorJsonParser;->u:Lpnb;

    const-string v4, "row_span"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v21

    move v6, v11

    move-object/from16 v44, v7

    move-object/from16 v7, v16

    move-object/from16 v40, v8

    move-object/from16 v8, v29

    move-object/from16 v45, v9

    move-object/from16 v9, v18

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_INT, ROW_SPAN_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->D:Ltp3;

    move-object v6, v2

    goto :goto_1d

    :cond_1d
    const/4 v6, 0x0

    :goto_1d
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v7

    const-string v4, "selected_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    move-object/from16 v7, v59

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1e

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->E:Ltp3;

    move-object v6, v2

    goto :goto_1e

    :cond_1e
    const/4 v6, 0x0

    :goto_1e
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T6()Lyi5;

    move-result-object v16

    const-string v4, "shape"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object v10, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026vShapeJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1f

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->F:Ltp3;

    move-object v6, v2

    goto :goto_1f

    :cond_1f
    const/4 v6, 0x0

    :goto_1f
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->u3()Lyi5;

    move-result-object v16

    const-string v4, "space_between_centers"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v46, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026edSizeJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_20

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->G:Ltp3;

    move-object v6, v2

    goto :goto_20

    :cond_20
    const/4 v6, 0x0

    :goto_20
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->K8()Lyi5;

    move-result-object v16

    const-string v4, "tooltips"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v47, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026ooltipJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_21

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->H:Ltp3;

    move-object v6, v2

    goto :goto_21

    :cond_21
    const/4 v6, 0x0

    :goto_21
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W8()Lyi5;

    move-result-object v16

    const-string v4, "transform"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v48, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026nsformJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_22

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->I:Ltp3;

    move-object v6, v2

    goto :goto_22

    :cond_22
    const/4 v6, 0x0

    :goto_22
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->S1()Lyi5;

    move-result-object v16

    const-string v4, "transition_change"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v49, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalField(contex\u2026sitionJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_23

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->J:Ltp3;

    move-object/from16 v16, v2

    goto :goto_23

    :cond_23
    const/16 v16, 0x0

    :goto_23
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v18

    const-string v4, "transition_in"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v21, v8

    move-object v8, v6

    move-object/from16 v6, v16

    move-object/from16 v50, v7

    move-object/from16 v7, v18

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_24

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->K:Ltp3;

    move-object v6, v2

    goto :goto_24

    :cond_24
    const/4 v6, 0x0

    :goto_24
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v16

    const-string v4, "transition_out"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v51, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_25

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->L:Ltp3;

    move-object v6, v2

    goto :goto_25

    :cond_25
    const/4 v6, 0x0

    :goto_25
    sget-object v8, Lcom/yandex/div2/DivTransitionTrigger;->FROM_STRING:Le74;

    sget-object v5, Lcom/yandex/div2/DivIndicatorJsonParser;->v:Lhm5;

    const-string v2, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>"

    invoke-static {v5, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "transition_triggers"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v16, v5

    move v5, v11

    move-object/from16 v52, v7

    move-object v7, v8

    move-object/from16 v53, v21

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lra5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Le74;Lhm5;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalListField(co\u2026RIGGERS_VALIDATOR.cast())"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_26

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->M:Ltp3;

    move-object v6, v2

    goto :goto_26

    :cond_26
    const/4 v6, 0x0

    :goto_26
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z8()Lyi5;

    move-result-object v7

    const-string v4, "variable_triggers"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026riggerJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_27

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->N:Ltp3;

    move-object v6, v2

    goto :goto_27

    :cond_27
    const/4 v6, 0x0

    :goto_27
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->f9()Lyi5;

    move-result-object v16

    const-string v4, "variables"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v54, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026riableJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivIndicatorJsonParser;->p:Lzbb;

    if-eqz v1, :cond_28

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->O:Ltp3;

    move-object/from16 v16, v2

    goto :goto_28

    :cond_28
    const/16 v16, 0x0

    :goto_28
    sget-object v18, Lcom/yandex/div2/DivVisibility;->FROM_STRING:Le74;

    const-string v4, "visibility"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v55, v7

    move-object/from16 v7, v16

    move-object/from16 v56, v8

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026ivVisibility.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_29

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->P:Ltp3;

    move-object v6, v2

    goto :goto_29

    :cond_29
    const/4 v6, 0x0

    :goto_29
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v7

    const-string v4, "visibility_action"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026ActionJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2a

    iget-object v2, v1, Lcom/yandex/div2/DivIndicatorTemplate;->Q:Ltp3;

    move-object v6, v2

    goto :goto_2a

    :cond_2a
    const/4 v6, 0x0

    :goto_2a
    iget-object v2, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v16

    const-string v4, "visibility_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v59, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v6

    invoke-static {v6, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2b

    iget-object v1, v1, Lcom/yandex/div2/DivIndicatorTemplate;->R:Ltp3;

    move-object v4, v1

    goto :goto_2b

    :cond_2b
    const/4 v4, 0x0

    :goto_2b
    iget-object v0, v0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object v5

    const-string v2, "width"

    move-object v0, v12

    move-object/from16 v1, p3

    move v3, v11

    invoke-static/range {v0 .. v5}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v0

    move-object/from16 v57, v0

    invoke-static {v0, v15}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v13

    move-object/from16 v0, v17

    move-object/from16 v13, v58

    move-object v2, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v20

    move-object/from16 v16, v25

    move-object/from16 v17, v19

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v32

    move-object/from16 v21, v28

    move-object/from16 v22, v26

    move-object/from16 v23, v27

    move-object/from16 v24, v31

    move-object/from16 v25, v43

    move-object/from16 v26, v30

    move-object/from16 v27, v33

    move-object/from16 v28, v34

    move-object/from16 v29, v35

    move-object/from16 v30, v37

    move-object/from16 v31, v36

    move-object/from16 v32, v42

    move-object/from16 v33, v0

    move-object/from16 v34, v38

    move-object/from16 v35, v2

    move-object/from16 v36, v39

    move-object/from16 v37, v41

    move-object/from16 v38, v45

    move-object/from16 v39, v40

    move-object/from16 v40, v1

    move-object/from16 v41, v44

    move-object/from16 v42, v9

    move-object/from16 v43, v53

    move-object/from16 v44, v46

    move-object/from16 v45, v47

    move-object/from16 v46, v48

    move-object/from16 v47, v49

    move-object/from16 v48, v50

    move-object/from16 v49, v51

    move-object/from16 v50, v52

    move-object/from16 v51, v56

    move-object/from16 v52, v54

    move-object/from16 v53, v55

    move-object/from16 v54, v8

    move-object/from16 v55, v59

    move-object/from16 v56, v6

    invoke-direct/range {v13 .. v57}, Lcom/yandex/div2/DivIndicatorTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v58
.end method

.method public e(Lex7;Lcom/yandex/div2/DivIndicatorTemplate;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->I()Lyi5;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->b:Ltp3;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v3, "active_item_color"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "active_item_size"

    iget-object v3, p2, Lcom/yandex/div2/DivIndicatorTemplate;->c:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->d:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->v6()Lyi5;

    move-result-object v3

    const-string v4, "active_shape"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->e:Ltp3;

    sget-object v3, Lcom/yandex/div2/DivAlignmentHorizontal;->TO_STRING:Le74;

    const-string v4, "alignment_horizontal"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->f:Ltp3;

    sget-object v3, Lcom/yandex/div2/DivAlignmentVertical;->TO_STRING:Le74;

    const-string v4, "alignment_vertical"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "alpha"

    iget-object v3, p2, Lcom/yandex/div2/DivIndicatorTemplate;->g:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->h:Ltp3;

    sget-object v3, Lcom/yandex/div2/DivIndicator$Animation;->TO_STRING:Le74;

    const-string v4, "animation"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->i:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->r1()Lyi5;

    move-result-object v3

    const-string v4, "animators"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->j:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->D1()Lyi5;

    move-result-object v3

    const-string v4, "background"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->k:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->J1()Lyi5;

    move-result-object v3

    const-string v4, "border"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "column_span"

    iget-object v3, p2, Lcom/yandex/div2/DivIndicatorTemplate;->l:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->m:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->N2()Lyi5;

    move-result-object v3

    const-string v4, "disappear_actions"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->n:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->Z2()Lyi5;

    move-result-object v3

    const-string v4, "extensions"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->o:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->x3()Lyi5;

    move-result-object v3

    const-string v4, "focus"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->p:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->G3()Lyi5;

    move-result-object v3

    const-string v4, "functions"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->q:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object v3

    const-string v4, "height"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "id"

    iget-object v3, p2, Lcom/yandex/div2/DivIndicatorTemplate;->r:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "inactive_item_color"

    iget-object v3, p2, Lcom/yandex/div2/DivIndicatorTemplate;->s:Ltp3;

    invoke-static {p1, v0, v1, v3, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->t:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v6()Lyi5;

    move-result-object v2

    const-string v3, "inactive_minimum_shape"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->u:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v6()Lyi5;

    move-result-object v2

    const-string v3, "inactive_shape"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->v:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Y3()Lyi5;

    move-result-object v2

    const-string v3, "items_placement"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->w:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N4()Lyi5;

    move-result-object v2

    const-string v3, "layout_provider"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->x:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v2

    const-string v3, "margins"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "minimum_item_size"

    iget-object v2, p2, Lcom/yandex/div2/DivIndicatorTemplate;->y:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->z:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v2

    const-string v3, "paddings"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "pager_id"

    iget-object v2, p2, Lcom/yandex/div2/DivIndicatorTemplate;->A:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "reuse_id"

    iget-object v2, p2, Lcom/yandex/div2/DivIndicatorTemplate;->B:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "row_span"

    iget-object v2, p2, Lcom/yandex/div2/DivIndicatorTemplate;->C:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->D:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v2

    const-string v3, "selected_actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->E:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->T6()Lyi5;

    move-result-object v2

    const-string v3, "shape"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->F:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->u3()Lyi5;

    move-result-object v2

    const-string v3, "space_between_centers"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->G:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->K8()Lyi5;

    move-result-object v2

    const-string v3, "tooltips"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->H:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W8()Lyi5;

    move-result-object v2

    const-string v3, "transform"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->I:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->S1()Lyi5;

    move-result-object v2

    const-string v3, "transition_change"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->J:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v2

    const-string v3, "transition_in"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->K:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v2

    const-string v3, "transition_out"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->L:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivTransitionTrigger;->TO_STRING:Le74;

    const-string v3, "transition_triggers"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->J(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "type"

    const-string v2, "indicator"

    invoke-static {p1, v0, v1, v2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->M:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z8()Lyi5;

    move-result-object v2

    const-string v3, "variable_triggers"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->N:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->f9()Lyi5;

    move-result-object v2

    const-string v3, "variables"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->O:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivVisibility;->TO_STRING:Le74;

    const-string v3, "visibility"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->P:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_action"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivIndicatorTemplate;->Q:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object p2, p2, Lcom/yandex/div2/DivIndicatorTemplate;->R:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivIndicatorJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object p0

    const-string v1, "width"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
