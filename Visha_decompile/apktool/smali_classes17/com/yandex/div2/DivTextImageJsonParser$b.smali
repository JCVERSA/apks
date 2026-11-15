.class public final Lcom/yandex/div2/DivTextImageJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTextImageJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTextImageJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTextImageJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText$Image;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivText$Image;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTextImageJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivText$Image;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText$Image;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v1, "context"

    invoke-static {v7, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Lcom/yandex/div2/DivText$Image;

    iget-object v1, v0, Lcom/yandex/div2/DivTextImageJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->d8()Lyi5;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-static {v7, v8, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/yandex/div2/DivText$Image$Accessibility;

    sget-object v4, Lcom/yandex/div2/DivTextImageJsonParser;->h:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivTextAlignmentVertical;->FROM_STRING:Le74;

    sget-object v10, Lcom/yandex/div2/DivTextImageJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "alignment_vertical"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v10, v1

    :goto_0
    iget-object v1, v0, Lcom/yandex/div2/DivTextImageJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v1

    const-string v2, "height"

    invoke-static {v7, v8, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivFixedSize;

    if-nez v1, :cond_1

    sget-object v1, Lcom/yandex/div2/DivTextImageJsonParser;->c:Lcom/yandex/div2/DivFixedSize;

    :cond_1
    move-object v11, v1

    const-string v1, "JsonPropertyParser.readO\u2026) ?: HEIGHT_DEFAULT_VALUE"

    invoke-static {v11, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/yandex/div2/DivTextImageJsonParser;->i:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivText$Image$IndexingDirection;->FROM_STRING:Le74;

    sget-object v12, Lcom/yandex/div2/DivTextImageJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "indexing_direction"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v12, v1

    :goto_1
    sget-object v4, Lacb;->a:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v14, Lcom/yandex/div2/DivTextImageJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "preload_required"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v14

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v14, v1

    :goto_2
    sget-object v4, Lacb;->b:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/DivTextImageJsonParser;->k:Lpnb;

    const-string v3, "start"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lpa5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v15

    const-string v1, "readExpression(context, \u2026_TO_INT, START_VALIDATOR)"

    invoke-static {v15, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lacb;->f:Lzbb;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v3, "tint_color"

    invoke-static {v7, v8, v3, v1, v2}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v16

    sget-object v4, Lcom/yandex/div2/DivTextImageJsonParser;->j:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivBlendMode;->FROM_STRING:Le74;

    sget-object v17, Lcom/yandex/div2/DivTextImageJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "tint_mode"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v17, v1

    :goto_3
    sget-object v1, Lacb;->e:Lzbb;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v3, "url"

    invoke-static {v7, v8, v3, v1, v2}, Lpa5;->e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    const-string v2, "readExpression(context, \u2026E_HELPER_URI, ANY_TO_URI)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/yandex/div2/DivTextImageJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v0

    const-string v2, "width"

    invoke-static {v7, v8, v2, v0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivFixedSize;

    if-nez v0, :cond_5

    sget-object v0, Lcom/yandex/div2/DivTextImageJsonParser;->g:Lcom/yandex/div2/DivFixedSize;

    :cond_5
    const-string v2, "JsonPropertyParser.readO\u2026r) ?: WIDTH_DEFAULT_VALUE"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v13

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object v11, v1

    move-object v12, v0

    invoke-direct/range {v2 .. v12}, Lcom/yandex/div2/DivText$Image;-><init>(Lcom/yandex/div2/DivText$Image$Accessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;)V

    return-object v13
.end method

.method public e(Lex7;Lcom/yandex/div2/DivText$Image;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Image;->a:Lcom/yandex/div2/DivText$Image$Accessibility;

    iget-object v2, p0, Lcom/yandex/div2/DivTextImageJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->d8()Lyi5;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Image;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivTextAlignmentVertical;->TO_STRING:Le74;

    const-string v3, "alignment_vertical"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Image;->c:Lcom/yandex/div2/DivFixedSize;

    iget-object v2, p0, Lcom/yandex/div2/DivTextImageJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v2

    const-string v3, "height"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Image;->d:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivText$Image$IndexingDirection;->TO_STRING:Le74;

    const-string v3, "indexing_direction"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "preload_required"

    iget-object v2, p2, Lcom/yandex/div2/DivText$Image;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "start"

    iget-object v2, p2, Lcom/yandex/div2/DivText$Image;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Image;->g:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v3, "tint_color"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Image;->h:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivBlendMode;->TO_STRING:Le74;

    const-string v3, "tint_mode"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivText$Image;->i:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->c:Le74;

    const-string v3, "url"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object p2, p2, Lcom/yandex/div2/DivText$Image;->j:Lcom/yandex/div2/DivFixedSize;

    iget-object p0, p0, Lcom/yandex/div2/DivTextImageJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object p0

    const-string v1, "width"

    invoke-static {p1, v0, v1, p2, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    return-object v0
.end method
