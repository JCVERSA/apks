.class public final Lcom/yandex/div2/DivPagerJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivPagerJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPagerTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivPagerJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivPagerTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPagerTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivPagerJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivPagerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPagerTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivPagerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPagerTemplate;
    .locals 59

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

    new-instance v57, Lcom/yandex/div2/DivPagerTemplate;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->a:Ltp3;

    move-object v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

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

    sget-object v5, Lcom/yandex/div2/DivPagerJsonParser;->m:Lzbb;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    sget-object v8, Lcom/yandex/div2/DivAlignmentHorizontal;->FROM_STRING:Le74;

    const-string v4, "alignment_horizontal"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v15

    const-string v2, "readOptionalFieldWithExp\u2026ntHorizontal.FROM_STRING)"

    invoke-static {v15, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivPagerJsonParser;->n:Lzbb;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    sget-object v8, Lcom/yandex/div2/DivAlignmentVertical;->FROM_STRING:Le74;

    const-string v4, "alignment_vertical"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026mentVertical.FROM_STRING)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->d:Lzbb;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->d:Ltp3;

    move-object v7, v2

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v16, Lcom/yandex/div2/DivPagerJsonParser;->s:Lpnb;

    const-string v4, "alpha"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_DOUBLE, ALPHA_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->e:Ltp3;

    move-object v6, v2

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

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

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->f:Ltp3;

    move-object v6, v2

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

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

    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->g:Ltp3;

    move-object v6, v2

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->J1()Lyi5;

    move-result-object v16

    const-string v4, "border"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v19, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026BorderJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v16, Lacb;->b:Lzbb;

    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->h:Ltp3;

    move-object/from16 v18, v2

    goto :goto_7

    :cond_7
    const/16 v18, 0x0

    :goto_7
    sget-object v20, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v21, Lcom/yandex/div2/DivPagerJsonParser;->t:Lpnb;

    const-string v4, "column_span"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move v6, v11

    move-object/from16 v22, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v8

    move-object/from16 v8, v20

    move-object/from16 v23, v9

    move-object/from16 v9, v21

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026T, COLUMN_SPAN_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivPagerJsonParser;->o:Lzbb;

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->i:Ltp3;

    move-object v7, v2

    goto :goto_8

    :cond_8
    const/4 v7, 0x0

    :goto_8
    sget-object v21, Lcom/yandex/div2/DivPager$ItemAlignment;->FROM_STRING:Le74;

    const-string v4, "cross_axis_alignment"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v8, v21

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v7, "readOptionalFieldWithExp\u2026temAlignment.FROM_STRING)"

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->j:Ltp3;

    move-object/from16 v24, v2

    goto :goto_9

    :cond_9
    const/16 v24, 0x0

    :goto_9
    sget-object v25, Lcom/yandex/div2/DivPagerJsonParser;->u:Lpnb;

    const-string v4, "default_item"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move v6, v11

    move-object v13, v7

    move-object/from16 v7, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v20

    move-object/from16 v26, v9

    move-object/from16 v9, v25

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026, DEFAULT_ITEM_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_a

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->k:Ltp3;

    move-object v6, v2

    goto :goto_a

    :cond_a
    const/4 v6, 0x0

    :goto_a
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

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

    if-eqz v1, :cond_b

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->l:Ltp3;

    move-object v6, v2

    goto :goto_b

    :cond_b
    const/4 v6, 0x0

    :goto_b
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z2()Lyi5;

    move-result-object v25

    const-string v4, "extensions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v27, v15

    move-object v15, v7

    move-object/from16 v7, v25

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026ensionJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_c

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->m:Ltp3;

    move-object v6, v2

    goto :goto_c

    :cond_c
    const/4 v6, 0x0

    :goto_c
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x3()Lyi5;

    move-result-object v25

    const-string v4, "focus"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v28, v7

    move-object/from16 v7, v25

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026vFocusJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->n:Ltp3;

    move-object v6, v2

    goto :goto_d

    :cond_d
    const/4 v6, 0x0

    :goto_d
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->G3()Lyi5;

    move-result-object v25

    const-string v4, "functions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v29, v7

    move-object/from16 v7, v25

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026nctionJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_e

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->o:Ltp3;

    move-object v6, v2

    goto :goto_e

    :cond_e
    const/4 v6, 0x0

    :goto_e
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object v25

    const-string v4, "height"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v30, v7

    move-object/from16 v7, v25

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalField(contex\u2026ivSizeJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_f

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->p:Ltp3;

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    const-string v3, "id"

    invoke-static {v12, v10, v3, v11, v2}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v5

    const-string v2, "readOptionalField(contex\u2026llowOverride, parent?.id)"

    invoke-static {v5, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v25, Lacb;->a:Lzbb;

    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->q:Ltp3;

    move-object/from16 v31, v2

    goto :goto_10

    :cond_10
    const/16 v31, 0x0

    :goto_10
    sget-object v32, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v4, "infinite_scroll"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v33, v5

    move-object/from16 v5, v25

    move-object v10, v6

    move v6, v11

    move-object/from16 v34, v7

    move-object/from16 v7, v31

    move-object/from16 v31, v8

    move-object/from16 v8, v32

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026teScroll, ANY_TO_BOOLEAN)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_11

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->r:Ltp3;

    move-object v6, v2

    goto :goto_11

    :cond_11
    const/4 v6, 0x0

    :goto_11
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->b2()Lyi5;

    move-result-object v7

    const-string v4, "item_builder"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026uilderJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->s:Ltp3;

    move-object v6, v2

    goto :goto_12

    :cond_12
    const/4 v6, 0x0

    :goto_12
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->u3()Lyi5;

    move-result-object v35

    const-string v4, "item_spacing"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v36, v7

    move-object/from16 v7, v35

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026edSizeJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->t:Ltp3;

    move-object v6, v2

    goto :goto_13

    :cond_13
    const/4 v6, 0x0

    :goto_13
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->K4()Lyi5;

    move-result-object v35

    const-string v4, "items"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v37, v7

    move-object/from16 v7, v35

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026nt.divJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->u:Ltp3;

    move-object v6, v2

    goto :goto_14

    :cond_14
    const/4 v6, 0x0

    :goto_14
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->A5()Lyi5;

    move-result-object v35

    const-string v4, "layout_mode"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v38, v7

    move-object/from16 v7, v35

    invoke-static/range {v2 .. v7}, Lra5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readField(context, data,\u2026utModeJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_15

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->v:Ltp3;

    move-object v6, v2

    goto :goto_15

    :cond_15
    const/4 v6, 0x0

    :goto_15
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N4()Lyi5;

    move-result-object v35

    const-string v4, "layout_provider"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v39, v7

    move-object/from16 v7, v35

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026oviderJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_16

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->w:Ltp3;

    move-object v6, v2

    goto :goto_16

    :cond_16
    const/4 v6, 0x0

    :goto_16
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v35

    const-string v4, "margins"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v40, v7

    move-object/from16 v7, v35

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalField(contex\u2026InsetsJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivPagerJsonParser;->p:Lzbb;

    if-eqz v1, :cond_17

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->x:Ltp3;

    move-object/from16 v35, v2

    goto :goto_17

    :cond_17
    const/16 v35, 0x0

    :goto_17
    sget-object v41, Lcom/yandex/div2/DivPager$Orientation;->FROM_STRING:Le74;

    const-string v4, "orientation"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v42, v9

    move-object v9, v6

    move v6, v11

    move-object/from16 v43, v7

    move-object/from16 v7, v35

    move-object/from16 v35, v8

    move-object/from16 v8, v41

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026.Orientation.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->y:Ltp3;

    move-object v6, v2

    goto :goto_18

    :cond_18
    const/4 v6, 0x0

    :goto_18
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v7

    const-string v4, "paddings"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->z:Ltp3;

    move-object v6, v2

    goto :goto_19

    :cond_19
    const/4 v6, 0x0

    :goto_19
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->o5()Lyi5;

    move-result-object v9

    const-string v4, "page_transformation"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v41, v7

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalField(contex\u2026mationJsonTemplateParser)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1a

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->A:Ltp3;

    move-object v7, v2

    goto :goto_1a

    :cond_1a
    const/4 v7, 0x0

    :goto_1a
    const-string v4, "restrict_parent_scroll"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v25

    move v6, v11

    move-object/from16 v44, v8

    move-object/from16 v8, v32

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026ntScroll, ANY_TO_BOOLEAN)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->c:Lzbb;

    if-eqz v1, :cond_1b

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->B:Ltp3;

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

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->C:Ltp3;

    move-object/from16 v25, v2

    goto :goto_1c

    :cond_1c
    const/16 v25, 0x0

    :goto_1c
    sget-object v32, Lcom/yandex/div2/DivPagerJsonParser;->v:Lpnb;

    const-string v4, "row_span"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move v6, v11

    move-object/from16 v45, v7

    move-object/from16 v7, v25

    move-object/from16 v46, v8

    move-object/from16 v8, v20

    move-object/from16 v25, v42

    move-object/from16 v42, v9

    move-object/from16 v9, v32

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_INT, ROW_SPAN_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivPagerJsonParser;->q:Lzbb;

    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->D:Ltp3;

    move-object v7, v2

    goto :goto_1d

    :cond_1d
    const/4 v7, 0x0

    :goto_1d
    const-string v4, "scroll_axis_alignment"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v8, v21

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    invoke-static {v8, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1e

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->E:Ltp3;

    move-object v6, v2

    goto :goto_1e

    :cond_1e
    const/4 v6, 0x0

    :goto_1e
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v7

    const-string v4, "selected_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v13

    invoke-static {v13, v15}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1f

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->F:Ltp3;

    move-object v6, v2

    goto :goto_1f

    :cond_1f
    const/4 v6, 0x0

    :goto_1f
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

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

    if-eqz v1, :cond_20

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->G:Ltp3;

    move-object v6, v2

    goto :goto_20

    :cond_20
    const/4 v6, 0x0

    :goto_20
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W8()Lyi5;

    move-result-object v16

    const-string v4, "transform"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v47, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalField(contex\u2026nsformJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_21

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->H:Ltp3;

    move-object v6, v2

    goto :goto_21

    :cond_21
    const/4 v6, 0x0

    :goto_21
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->S1()Lyi5;

    move-result-object v16

    const-string v4, "transition_change"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v48, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v6, "readOptionalField(contex\u2026sitionJsonTemplateParser)"

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_22

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->I:Ltp3;

    move-object/from16 v16, v2

    goto :goto_22

    :cond_22
    const/16 v16, 0x0

    :goto_22
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v20

    const-string v4, "transition_in"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v21, v8

    move-object v8, v6

    move-object/from16 v6, v16

    move-object/from16 v49, v7

    move-object/from16 v7, v20

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_23

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->J:Ltp3;

    move-object v6, v2

    goto :goto_23

    :cond_23
    const/4 v6, 0x0

    :goto_23
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v16

    const-string v4, "transition_out"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v50, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_24

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->K:Ltp3;

    move-object v6, v2

    goto :goto_24

    :cond_24
    const/4 v6, 0x0

    :goto_24
    sget-object v8, Lcom/yandex/div2/DivTransitionTrigger;->FROM_STRING:Le74;

    sget-object v5, Lcom/yandex/div2/DivPagerJsonParser;->w:Lhm5;

    const-string v2, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>"

    invoke-static {v5, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "transition_triggers"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v16, v5

    move v5, v11

    move-object/from16 v51, v7

    move-object v7, v8

    move-object/from16 v52, v21

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lra5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Le74;Lhm5;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalListField(co\u2026RIGGERS_VALIDATOR.cast())"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_25

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->L:Ltp3;

    move-object v6, v2

    goto :goto_25

    :cond_25
    const/4 v6, 0x0

    :goto_25
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

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

    if-eqz v1, :cond_26

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->M:Ltp3;

    move-object v6, v2

    goto :goto_26

    :cond_26
    const/4 v6, 0x0

    :goto_26
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->f9()Lyi5;

    move-result-object v16

    const-string v4, "variables"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v53, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalListField(co\u2026riableJsonTemplateParser)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivPagerJsonParser;->r:Lzbb;

    if-eqz v1, :cond_27

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->N:Ltp3;

    move-object/from16 v16, v2

    goto :goto_27

    :cond_27
    const/16 v16, 0x0

    :goto_27
    sget-object v20, Lcom/yandex/div2/DivVisibility;->FROM_STRING:Le74;

    const-string v4, "visibility"

    move-object v2, v12

    move-object/from16 v3, p3

    move v6, v11

    move-object/from16 v54, v7

    move-object/from16 v7, v16

    move-object/from16 v55, v8

    move-object/from16 v8, v20

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026ivVisibility.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_28

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->O:Ltp3;

    move-object v6, v2

    goto :goto_28

    :cond_28
    const/4 v6, 0x0

    :goto_28
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

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

    if-eqz v1, :cond_29

    iget-object v2, v1, Lcom/yandex/div2/DivPagerTemplate;->P:Ltp3;

    move-object v6, v2

    goto :goto_29

    :cond_29
    const/4 v6, 0x0

    :goto_29
    iget-object v2, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v16

    const-string v4, "visibility_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v58, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v6

    invoke-static {v6, v15}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2a

    iget-object v1, v1, Lcom/yandex/div2/DivPagerTemplate;->Q:Ltp3;

    move-object v4, v1

    goto :goto_2a

    :cond_2a
    const/4 v4, 0x0

    :goto_2a
    iget-object v0, v0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object v5

    const-string v2, "width"

    move-object v0, v12

    move-object/from16 v1, p3

    move v3, v11

    invoke-static/range {v0 .. v5}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v0

    move-object/from16 v56, v0

    invoke-static {v0, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v13

    move-object/from16 v13, v57

    move-object/from16 v15, v27

    move-object/from16 v16, v17

    move-object/from16 v17, v23

    move-object/from16 v20, v22

    move-object/from16 v21, v26

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v31

    move-object/from16 v25, v28

    move-object/from16 v26, v29

    move-object/from16 v27, v30

    move-object/from16 v28, v34

    move-object/from16 v29, v33

    move-object/from16 v30, v35

    move-object/from16 v31, v36

    move-object/from16 v32, v37

    move-object/from16 v33, v38

    move-object/from16 v34, v39

    move-object/from16 v35, v40

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v38, v41

    move-object/from16 v39, v42

    move-object/from16 v40, v46

    move-object/from16 v41, v45

    move-object/from16 v42, v9

    move-object/from16 v43, v52

    move-object/from16 v44, v0

    move-object/from16 v45, v47

    move-object/from16 v46, v48

    move-object/from16 v47, v49

    move-object/from16 v48, v50

    move-object/from16 v49, v51

    move-object/from16 v50, v55

    move-object/from16 v51, v53

    move-object/from16 v52, v54

    move-object/from16 v53, v8

    move-object/from16 v54, v58

    move-object/from16 v55, v6

    invoke-direct/range {v13 .. v56}, Lcom/yandex/div2/DivPagerTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v57
.end method

.method public e(Lex7;Lcom/yandex/div2/DivPagerTemplate;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->I()Lyi5;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->b:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivAlignmentHorizontal;->TO_STRING:Le74;

    const-string v3, "alignment_horizontal"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->c:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivAlignmentVertical;->TO_STRING:Le74;

    const-string v3, "alignment_vertical"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "alpha"

    iget-object v2, p2, Lcom/yandex/div2/DivPagerTemplate;->d:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->e:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r1()Lyi5;

    move-result-object v2

    const-string v3, "animators"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->f:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->D1()Lyi5;

    move-result-object v2

    const-string v3, "background"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->g:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->J1()Lyi5;

    move-result-object v2

    const-string v3, "border"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "column_span"

    iget-object v2, p2, Lcom/yandex/div2/DivPagerTemplate;->h:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->i:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivPager$ItemAlignment;->TO_STRING:Le74;

    const-string v3, "cross_axis_alignment"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "default_item"

    iget-object v3, p2, Lcom/yandex/div2/DivPagerTemplate;->j:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->k:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->N2()Lyi5;

    move-result-object v3

    const-string v4, "disappear_actions"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->l:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->Z2()Lyi5;

    move-result-object v3

    const-string v4, "extensions"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->m:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->x3()Lyi5;

    move-result-object v3

    const-string v4, "focus"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->n:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->G3()Lyi5;

    move-result-object v3

    const-string v4, "functions"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->o:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object v3

    const-string v4, "height"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "id"

    iget-object v3, p2, Lcom/yandex/div2/DivPagerTemplate;->p:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "infinite_scroll"

    iget-object v3, p2, Lcom/yandex/div2/DivPagerTemplate;->q:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->r:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->b2()Lyi5;

    move-result-object v3

    const-string v4, "item_builder"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->s:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->u3()Lyi5;

    move-result-object v3

    const-string v4, "item_spacing"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->t:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->K4()Lyi5;

    move-result-object v3

    const-string v4, "items"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->u:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->A5()Lyi5;

    move-result-object v3

    const-string v4, "layout_mode"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->v:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->N4()Lyi5;

    move-result-object v3

    const-string v4, "layout_provider"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->w:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v3

    const-string v4, "margins"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->x:Ltp3;

    sget-object v3, Lcom/yandex/div2/DivPager$Orientation;->TO_STRING:Le74;

    const-string v4, "orientation"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->y:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v3

    const-string v4, "paddings"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->z:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->o5()Lyi5;

    move-result-object v3

    const-string v4, "page_transformation"

    invoke-static {p1, v0, v4, v1, v3}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "restrict_parent_scroll"

    iget-object v3, p2, Lcom/yandex/div2/DivPagerTemplate;->A:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "reuse_id"

    iget-object v3, p2, Lcom/yandex/div2/DivPagerTemplate;->B:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "row_span"

    iget-object v3, p2, Lcom/yandex/div2/DivPagerTemplate;->C:Ltp3;

    invoke-static {p1, v0, v1, v3}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "scroll_axis_alignment"

    iget-object v3, p2, Lcom/yandex/div2/DivPagerTemplate;->D:Ltp3;

    invoke-static {p1, v0, v1, v3, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->E:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v2

    const-string v3, "selected_actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->F:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->K8()Lyi5;

    move-result-object v2

    const-string v3, "tooltips"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->G:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W8()Lyi5;

    move-result-object v2

    const-string v3, "transform"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->H:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->S1()Lyi5;

    move-result-object v2

    const-string v3, "transition_change"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->I:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v2

    const-string v3, "transition_in"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->J:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->x1()Lyi5;

    move-result-object v2

    const-string v3, "transition_out"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->K:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivTransitionTrigger;->TO_STRING:Le74;

    const-string v3, "transition_triggers"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->J(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "type"

    const-string v2, "pager"

    invoke-static {p1, v0, v1, v2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->L:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Z8()Lyi5;

    move-result-object v2

    const-string v3, "variable_triggers"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->M:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->f9()Lyi5;

    move-result-object v2

    const-string v3, "variables"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->N:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivVisibility;->TO_STRING:Le74;

    const-string v3, "visibility"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->O:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_action"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPagerTemplate;->P:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->r9()Lyi5;

    move-result-object v2

    const-string v3, "visibility_actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object p2, p2, Lcom/yandex/div2/DivPagerTemplate;->Q:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivPagerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->W6()Lyi5;

    move-result-object p0

    const-string v1, "width"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
