.class public final Lcom/yandex/div2/DivTooltipJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTooltipJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTooltipJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTooltipJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTooltip;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTooltip;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTooltipJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivTooltip;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTooltip;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v1, "context"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/yandex/div2/DivTooltip;

    iget-object v1, v0, Lcom/yandex/div2/DivTooltipJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->n1()Lyi5;

    move-result-object v1

    const-string v2, "animation_in"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/yandex/div2/DivAnimation;

    iget-object v1, v0, Lcom/yandex/div2/DivTooltipJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->n1()Lyi5;

    move-result-object v1

    const-string v2, "animation_out"

    invoke-static {v8, v9, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/yandex/div2/DivAnimation;

    const-string v1, "background_accessibility_description"

    sget-object v2, Lacb;->c:Lzbb;

    invoke-static {v8, v9, v1, v2}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v12

    sget-object v4, Lacb;->a:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v7, Lcom/yandex/div2/DivTooltipJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "close_by_tap_outside"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v13, v7

    goto :goto_0

    :cond_0
    move-object v13, v1

    :goto_0
    iget-object v1, v0, Lcom/yandex/div2/DivTooltipJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J4()Lyi5;

    move-result-object v1

    const-string v2, "div"

    invoke-static {v8, v9, v2, v1}, Ltb5;->g(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "read(context, data, \"div\u2026nent.divJsonEntityParser)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v1

    check-cast v15, Lcom/yandex/div2/Div;

    sget-object v4, Lacb;->b:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/DivTooltipJsonParser;->f:Lpnb;

    sget-object v16, Lcom/yandex/div2/DivTooltipJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "duration"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v16, v1

    :goto_1
    const-string v1, "id"

    invoke-static {v8, v9, v1}, Ltb5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "read(context, data, \"id\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/yandex/div2/DivTooltipJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->M8()Lyi5;

    move-result-object v2

    const-string v3, "mode"

    invoke-static {v8, v9, v3, v2}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivTooltipMode;

    if-nez v2, :cond_2

    sget-object v2, Lcom/yandex/div2/DivTooltipJsonParser;->d:Lcom/yandex/div2/DivTooltipMode$b;

    :cond_2
    move-object v7, v2

    const-string v2, "JsonPropertyParser.readO\u2026er) ?: MODE_DEFAULT_VALUE"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/yandex/div2/DivTooltipJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W5()Lyi5;

    move-result-object v2

    const-string v3, "offset"

    invoke-static {v8, v9, v3, v2}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/yandex/div2/DivPoint;

    sget-object v2, Lcom/yandex/div2/DivTooltipJsonParser;->e:Lzbb;

    sget-object v3, Lcom/yandex/div2/DivTooltip$Position;->FROM_STRING:Le74;

    const-string v4, "position"

    invoke-static {v8, v9, v4, v2, v3}, Lpa5;->e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v6

    const-string v2, "readExpression(context, \u2026tip.Position.FROM_STRING)"

    invoke-static {v6, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/yandex/div2/DivTooltipJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v0

    const-string v2, "tap_outside_actions"

    invoke-static {v8, v9, v2, v0}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v0

    move-object v2, v14

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v12, v6

    move-object v6, v13

    move-object v10, v7

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v9, v1

    move-object/from16 v11, v17

    move-object v13, v0

    invoke-direct/range {v2 .. v13}, Lcom/yandex/div2/DivTooltip;-><init>(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/Div;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;Lcom/yandex/div2/DivTooltipMode;Lcom/yandex/div2/DivPoint;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;)V

    return-object v14
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTooltip;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivTooltip;->a:Lcom/yandex/div2/DivAnimation;

    iget-object v2, p0, Lcom/yandex/div2/DivTooltipJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->n1()Lyi5;

    move-result-object v2

    const-string v3, "animation_in"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTooltip;->b:Lcom/yandex/div2/DivAnimation;

    iget-object v2, p0, Lcom/yandex/div2/DivTooltipJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->n1()Lyi5;

    move-result-object v2

    const-string v3, "animation_out"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "background_accessibility_description"

    iget-object v2, p2, Lcom/yandex/div2/DivTooltip;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "close_by_tap_outside"

    iget-object v2, p2, Lcom/yandex/div2/DivTooltip;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTooltip;->e:Lcom/yandex/div2/Div;

    iget-object v2, p0, Lcom/yandex/div2/DivTooltipJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->J4()Lyi5;

    move-result-object v2

    const-string v3, "div"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string v1, "duration"

    iget-object v2, p2, Lcom/yandex/div2/DivTooltip;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "id"

    iget-object v2, p2, Lcom/yandex/div2/DivTooltip;->g:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTooltip;->h:Lcom/yandex/div2/DivTooltipMode;

    iget-object v2, p0, Lcom/yandex/div2/DivTooltipJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->M8()Lyi5;

    move-result-object v2

    const-string v3, "mode"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTooltip;->i:Lcom/yandex/div2/DivPoint;

    iget-object v2, p0, Lcom/yandex/div2/DivTooltipJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W5()Lyi5;

    move-result-object v2

    const-string v3, "offset"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTooltip;->j:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivTooltip$Position;->TO_STRING:Le74;

    const-string v3, "position"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object p2, p2, Lcom/yandex/div2/DivTooltip;->k:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/div2/DivTooltipJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object p0

    const-string v1, "tap_outside_actions"

    invoke-static {p1, v0, v1, p2, p0}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    return-object v0
.end method
