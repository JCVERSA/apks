.class public final Lcom/yandex/div2/DivTabsJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTabsJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTabsTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTabsJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivTabsTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabs;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTabsTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabs;
    .locals 57

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

    new-instance v46, Lcom/yandex/div2/DivTabs;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->a:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->H()Lyi5;

    move-result-object v6

    const-string v4, "accessibility"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/yandex/div2/DivAccessibility;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->b:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTabsJsonParser;->n:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivAlignmentHorizontal;->FROM_STRING:Le74;

    const-string v4, "alignment_horizontal"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v13

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->c:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTabsJsonParser;->o:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivAlignmentVertical;->FROM_STRING:Le74;

    const-string v4, "alignment_vertical"

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v14

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->d:Ltp3;

    sget-object v5, Lacb;->d:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v7, Lcom/yandex/div2/DivTabsJsonParser;->q:Lpnb;

    sget-object v15, Lcom/yandex/div2/DivTabsJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "alpha"

    move-object v8, v15

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v15, v1

    :goto_0
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->e:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q1()Lyi5;

    move-result-object v6

    const-string v4, "animators"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v16

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->f:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->E1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->C1()Lyi5;

    move-result-object v6

    const-string v4, "background"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v17

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->g:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->K1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->I1()Lyi5;

    move-result-object v6

    const-string v4, "border"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/yandex/div2/DivBorder;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->h:Ltp3;

    sget-object v8, Lacb;->b:Lzbb;

    sget-object v19, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/DivTabsJsonParser;->r:Lpnb;

    const-string v4, "column_span"

    move-object/from16 v1, p1

    move-object v5, v8

    move-object/from16 v6, v19

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v20

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->i:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->O2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M2()Lyi5;

    move-result-object v6

    const-string v4, "disappear_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v21

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->j:Ltp3;

    sget-object v22, Lacb;->a:Lzbb;

    sget-object v23, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v24, Lcom/yandex/div2/DivTabsJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "dynamic_height"

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v24, v1

    :goto_1
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->k:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->a3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y2()Lyi5;

    move-result-object v6

    const-string v4, "extensions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v25

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->l:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w3()Lyi5;

    move-result-object v6

    const-string v4, "focus"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/yandex/div2/DivFocus;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->m:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->H3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->F3()Lyi5;

    move-result-object v6

    const-string v4, "functions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v27

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->n:Ltp3;

    sget-object v28, Lcom/yandex/div2/DivTabsJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "has_separator"

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v28

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v28, v1

    :goto_2
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->o:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X6()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v6

    const-string v4, "height"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivSize;

    if-nez v1, :cond_3

    sget-object v1, Lcom/yandex/div2/DivTabsJsonParser;->e:Lcom/yandex/div2/DivSize$d;

    :cond_3
    move-object v7, v1

    const-string v1, "JsonFieldResolver.resolv\u2026) ?: HEIGHT_DEFAULT_VALUE"

    invoke-static {v7, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v10, Lcom/yandex/div2/DivTabsTemplate;->p:Ltp3;

    const-string v2, "id"

    invoke-static {v9, v1, v11, v2}, Lsa5;->m(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Ljava/lang/String;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->q:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->N7()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->L7()Lyi5;

    move-result-object v6

    sget-object v30, Lcom/yandex/div2/DivTabsJsonParser;->s:Lhm5;

    const-string v4, "items"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v31, v7

    move-object/from16 v7, v30

    invoke-static/range {v1 .. v7}, Lsa5;->l(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object v7

    const-string v1, "resolveList(context, tem\u2026yParser, ITEMS_VALIDATOR)"

    invoke-static {v7, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->r:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->O4()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M4()Lyi5;

    move-result-object v6

    const-string v4, "layout_provider"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Lcom/yandex/div2/DivLayoutProvider;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->s:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v6

    const-string v4, "margins"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lcom/yandex/div2/DivEdgeInsets;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->t:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v6

    const-string v4, "paddings"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Lcom/yandex/div2/DivEdgeInsets;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->u:Ltp3;

    sget-object v34, Lcom/yandex/div2/DivTabsJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "restrict_parent_scroll"

    move-object/from16 v1, p1

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v35, v7

    move-object/from16 v7, v34

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v34, v1

    :goto_3
    iget-object v1, v10, Lcom/yandex/div2/DivTabsTemplate;->v:Ltp3;

    const-string v2, "reuse_id"

    sget-object v3, Lacb;->c:Lzbb;

    invoke-static {v9, v1, v11, v2, v3}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v36

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->w:Ltp3;

    const-string v4, "row_span"

    sget-object v7, Lcom/yandex/div2/DivTabsJsonParser;->t:Lpnb;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v8

    move-object/from16 v6, v19

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v37

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->x:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "selected_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v38

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->y:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivTabsJsonParser;->u:Lpnb;

    sget-object v39, Lcom/yandex/div2/DivTabsJsonParser;->g:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "selected_tab"

    move-object v5, v8

    move-object/from16 v6, v19

    move-object/from16 v8, v39

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v39, v1

    :goto_4
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->z:Ltp3;

    sget-object v5, Lacb;->f:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v8, Lcom/yandex/div2/DivTabsJsonParser;->h:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "separator_color"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_6

    move-object/from16 v40, v8

    goto :goto_5

    :cond_6
    move-object/from16 v40, v1

    :goto_5
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->A:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v6

    const-string v4, "separator_paddings"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivEdgeInsets;

    if-nez v1, :cond_7

    sget-object v1, Lcom/yandex/div2/DivTabsJsonParser;->i:Lcom/yandex/div2/DivEdgeInsets;

    :cond_7
    move-object v8, v1

    const-string v1, "JsonFieldResolver.resolv\u2026OR_PADDINGS_DEFAULT_VALUE"

    invoke-static {v8, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->B:Ltp3;

    sget-object v19, Lcom/yandex/div2/DivTabsJsonParser;->j:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "switch_tabs_by_content_swipe_enabled"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v19

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_8

    move-object/from16 v41, v19

    goto :goto_6

    :cond_8
    move-object/from16 v41, v1

    :goto_6
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->C:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->T7()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->R7()Lyi5;

    move-result-object v6

    const-string v4, "tab_title_delimiter"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v42, v1

    check-cast v42, Lcom/yandex/div2/DivTabs$TabTitleDelimiter;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->D:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->W7()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->U7()Lyi5;

    move-result-object v6

    const-string v4, "tab_title_style"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v43, v1

    check-cast v43, Lcom/yandex/div2/DivTabs$TabTitleStyle;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->E:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v6

    const-string v4, "title_paddings"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivEdgeInsets;

    if-nez v1, :cond_9

    sget-object v1, Lcom/yandex/div2/DivTabsJsonParser;->k:Lcom/yandex/div2/DivEdgeInsets;

    :cond_9
    move-object v7, v1

    const-string v1, "JsonFieldResolver.resolv\u2026LE_PADDINGS_DEFAULT_VALUE"

    invoke-static {v7, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->F:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->L8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J8()Lyi5;

    move-result-object v6

    const-string v4, "tooltips"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v44

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->G:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->X8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->V8()Lyi5;

    move-result-object v6

    const-string v4, "transform"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v45, v1

    check-cast v45, Lcom/yandex/div2/DivTransform;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->H:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->T1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->R1()Lyi5;

    move-result-object v6

    const-string v4, "transition_change"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v47, v1

    check-cast v47, Lcom/yandex/div2/DivChangeTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->I:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v6

    const-string v4, "transition_in"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v48, v1

    check-cast v48, Lcom/yandex/div2/DivAppearanceTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->J:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->y1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v6

    const-string v4, "transition_out"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v49, v1

    check-cast v49, Lcom/yandex/div2/DivAppearanceTransition;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->K:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTransitionTrigger;->FROM_STRING:Le74;

    sget-object v6, Lcom/yandex/div2/DivTabsJsonParser;->v:Lhm5;

    const-string v4, "transition_triggers"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->z(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lhm5;)Ljava/util/List;

    move-result-object v50

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->L:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->a9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y8()Lyi5;

    move-result-object v6

    const-string v4, "variable_triggers"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v51

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->M:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->g9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->e9()Lyi5;

    move-result-object v6

    const-string v4, "variables"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v52

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->N:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTabsJsonParser;->p:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivVisibility;->FROM_STRING:Le74;

    sget-object v19, Lcom/yandex/div2/DivTabsJsonParser;->l:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "visibility"

    move-object/from16 v53, v7

    move-object/from16 v7, v19

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_a

    move-object/from16 v54, v19

    goto :goto_7

    :cond_a
    move-object/from16 v54, v1

    :goto_7
    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->O:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v6

    const-string v4, "visibility_action"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v55, v1

    check-cast v55, Lcom/yandex/div2/DivVisibilityAction;

    iget-object v2, v10, Lcom/yandex/div2/DivTabsTemplate;->P:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->q9()Lyi5;

    move-result-object v6

    const-string v4, "visibility_actions"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v56

    iget-object v1, v10, Lcom/yandex/div2/DivTabsTemplate;->Q:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->X6()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/DivTabsJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v5

    const-string v3, "width"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivSize;

    if-nez v0, :cond_b

    sget-object v0, Lcom/yandex/div2/DivTabsJsonParser;->m:Lcom/yandex/div2/DivSize$c;

    :cond_b
    const-string v1, "JsonFieldResolver.resolv\u2026r) ?: WIDTH_DEFAULT_VALUE"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v46

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object v1, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    move-object/from16 v16, v28

    move-object/from16 v17, v31

    move-object/from16 v18, v29

    move-object/from16 v19, v35

    move-object/from16 v20, v30

    move-object/from16 v21, v32

    move-object/from16 v22, v33

    move-object/from16 v23, v34

    move-object/from16 v24, v36

    move-object/from16 v25, v37

    move-object/from16 v26, v38

    move-object/from16 v27, v39

    move-object/from16 v28, v40

    move-object/from16 v29, v1

    move-object/from16 v30, v41

    move-object/from16 v31, v42

    move-object/from16 v32, v43

    move-object/from16 v33, v53

    move-object/from16 v34, v44

    move-object/from16 v35, v45

    move-object/from16 v36, v47

    move-object/from16 v37, v48

    move-object/from16 v38, v49

    move-object/from16 v39, v50

    move-object/from16 v40, v51

    move-object/from16 v41, v52

    move-object/from16 v42, v54

    move-object/from16 v43, v55

    move-object/from16 v44, v56

    move-object/from16 v45, v0

    invoke-direct/range {v2 .. v45}, Lcom/yandex/div2/DivTabs;-><init>(Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div2/DivFocus;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivSize;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div2/DivLayoutProvider;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTabs$TabTitleDelimiter;Lcom/yandex/div2/DivTabs$TabTitleStyle;Lcom/yandex/div2/DivEdgeInsets;Ljava/util/List;Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivChangeTransition;Lcom/yandex/div2/DivAppearanceTransition;Lcom/yandex/div2/DivAppearanceTransition;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVisibilityAction;Ljava/util/List;Lcom/yandex/div2/DivSize;)V

    return-object v46
.end method
