.class public final Lcom/yandex/div2/DivTooltipJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTooltipJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTooltipJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTooltipTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTooltipJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivTooltipTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTooltip;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTooltipTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTooltip;
    .locals 20

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

    new-instance v14, Lcom/yandex/div2/DivTooltip;

    iget-object v2, v10, Lcom/yandex/div2/DivTooltipTemplate;->a:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTooltipJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->p1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTooltipJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->n1()Lyi5;

    move-result-object v6

    const-string v4, "animation_in"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/yandex/div2/DivAnimation;

    iget-object v2, v10, Lcom/yandex/div2/DivTooltipTemplate;->b:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTooltipJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->p1()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTooltipJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->n1()Lyi5;

    move-result-object v6

    const-string v4, "animation_out"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/yandex/div2/DivAnimation;

    iget-object v1, v10, Lcom/yandex/div2/DivTooltipTemplate;->c:Ltp3;

    const-string v2, "background_accessibility_description"

    sget-object v3, Lacb;->c:Lzbb;

    invoke-static {v9, v1, v11, v2, v3}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v15

    iget-object v2, v10, Lcom/yandex/div2/DivTooltipTemplate;->d:Ltp3;

    sget-object v5, Lacb;->a:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v8, Lcom/yandex/div2/DivTooltipJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "close_by_tap_outside"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    move-object/from16 v16, v8

    goto :goto_0

    :cond_0
    move-object/from16 v16, v1

    :goto_0
    iget-object v2, v10, Lcom/yandex/div2/DivTooltipTemplate;->e:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTooltipJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->L4()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTooltipJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J4()Lyi5;

    move-result-object v6

    const-string v4, "div"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->d(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resolve(context, templat\u2026nent.divJsonEntityParser)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v1

    check-cast v17, Lcom/yandex/div2/Div;

    iget-object v2, v10, Lcom/yandex/div2/DivTooltipTemplate;->f:Ltp3;

    sget-object v5, Lacb;->b:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/DivTooltipJsonParser;->f:Lpnb;

    sget-object v18, Lcom/yandex/div2/DivTooltipJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "duration"

    move-object/from16 v1, p1

    move-object/from16 v8, v18

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v8, v18

    goto :goto_1

    :cond_1
    move-object v8, v1

    :goto_1
    iget-object v1, v10, Lcom/yandex/div2/DivTooltipTemplate;->g:Ltp3;

    const-string v2, "id"

    invoke-static {v9, v1, v11, v2}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resolve(context, template.id, data, \"id\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/String;

    iget-object v2, v10, Lcom/yandex/div2/DivTooltipTemplate;->h:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTooltipJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->O8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTooltipJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->M8()Lyi5;

    move-result-object v6

    const-string v4, "mode"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivTooltipMode;

    if-nez v1, :cond_2

    sget-object v1, Lcom/yandex/div2/DivTooltipJsonParser;->d:Lcom/yandex/div2/DivTooltipMode$b;

    :cond_2
    move-object v7, v1

    const-string v1, "JsonFieldResolver.resolv\u2026er) ?: MODE_DEFAULT_VALUE"

    invoke-static {v7, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lcom/yandex/div2/DivTooltipTemplate;->i:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTooltipJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y5()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivTooltipJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->W5()Lyi5;

    move-result-object v6

    const-string v4, "offset"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/yandex/div2/DivPoint;

    iget-object v2, v10, Lcom/yandex/div2/DivTooltipTemplate;->j:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivTooltipJsonParser;->e:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivTooltip$Position;->FROM_STRING:Le74;

    const-string v4, "position"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->h(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v6

    const-string v1, "resolveExpression(contex\u2026tip.Position.FROM_STRING)"

    invoke-static {v6, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v10, Lcom/yandex/div2/DivTooltipTemplate;->k:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/DivTooltipJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/DivTooltipJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v5

    const-string v3, "tap_outside_actions"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v0

    move-object v2, v14

    move-object v3, v12

    move-object v4, v13

    move-object v5, v15

    move-object v1, v6

    move-object/from16 v6, v16

    move-object v10, v7

    move-object/from16 v7, v17

    move-object/from16 v9, v18

    move-object/from16 v11, v19

    move-object v12, v1

    move-object v13, v0

    invoke-direct/range {v2 .. v13}, Lcom/yandex/div2/DivTooltip;-><init>(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/Div;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Lcom/yandex/div2/DivTooltipMode;Lcom/yandex/div2/DivPoint;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;)V

    return-object v14
.end method
