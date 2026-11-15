.class public final Lcom/yandex/div2/DivTextImageJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTextImageJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTextImageJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTextImageJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivTextTemplate$ImageTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText$Image;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTextTemplate$ImageTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivText$Image;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v10, p1

    invoke-static {v10, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "template"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    move-object/from16 v11, p3

    invoke-static {v11, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/div2/DivText$Image;

    iget-object v4, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->a:Ltp3;

    iget-object v3, v0, Lcom/yandex/div2/DivTextImageJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->f8()Lyi5;

    move-result-object v7

    iget-object v3, v0, Lcom/yandex/div2/DivTextImageJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->d8()Lyi5;

    move-result-object v8

    const-string v6, "accessibility"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/yandex/div2/DivText$Image$Accessibility;

    iget-object v4, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->b:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivTextImageJsonParser;->h:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivTextAlignmentVertical;->FROM_STRING:Le74;

    sget-object v13, Lcom/yandex/div2/DivTextImageJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "alignment_vertical"

    move-object/from16 v3, p1

    move-object v9, v13

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v13, v3

    :goto_0
    iget-object v4, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->c:Ltp3;

    iget-object v3, v0, Lcom/yandex/div2/DivTextImageJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->v3()Lyi5;

    move-result-object v7

    iget-object v3, v0, Lcom/yandex/div2/DivTextImageJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v8

    const-string v6, "height"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivFixedSize;

    if-nez v3, :cond_1

    sget-object v3, Lcom/yandex/div2/DivTextImageJsonParser;->c:Lcom/yandex/div2/DivFixedSize;

    :cond_1
    move-object v14, v3

    const-string v3, "JsonFieldResolver.resolv\u2026) ?: HEIGHT_DEFAULT_VALUE"

    invoke-static {v14, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->d:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivTextImageJsonParser;->i:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivText$Image$IndexingDirection;->FROM_STRING:Le74;

    sget-object v15, Lcom/yandex/div2/DivTextImageJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "indexing_direction"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object v9, v15

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v15, v3

    :goto_1
    iget-object v4, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->e:Ltp3;

    sget-object v7, Lacb;->a:Lzbb;

    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v16, Lcom/yandex/div2/DivTextImageJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "preload_required"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v9, v16

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v16, v3

    :goto_2
    iget-object v4, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->f:Ltp3;

    sget-object v7, Lacb;->b:Lzbb;

    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v9, Lcom/yandex/div2/DivTextImageJsonParser;->k:Lpnb;

    const-string v6, "start"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v9}, Lsa5;->i(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v9

    const-string v3, "resolveExpression(contex\u2026_TO_INT, START_VALIDATOR)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->g:Ltp3;

    sget-object v7, Lacb;->f:Lzbb;

    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v6, "tint_color"

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v17

    iget-object v4, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->h:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivTextImageJsonParser;->j:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivBlendMode;->FROM_STRING:Le74;

    sget-object v18, Lcom/yandex/div2/DivTextImageJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "tint_mode"

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v18, v3

    :goto_3
    iget-object v4, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->i:Ltp3;

    sget-object v7, Lacb;->e:Lzbb;

    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v6, "url"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->h(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v9

    const-string v3, "resolveExpression(contex\u2026E_HELPER_URI, ANY_TO_URI)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->j:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivTextImageJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->v3()Lyi5;

    move-result-object v7

    iget-object v0, v0, Lcom/yandex/div2/DivTextImageJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object v8

    const-string v6, "width"

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivFixedSize;

    if-nez v0, :cond_5

    sget-object v0, Lcom/yandex/div2/DivTextImageJsonParser;->g:Lcom/yandex/div2/DivFixedSize;

    :cond_5
    const-string v1, "JsonFieldResolver.resolv\u2026r) ?: WIDTH_DEFAULT_VALUE"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v1, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object v12, v1

    move-object v13, v0

    invoke-direct/range {v3 .. v13}, Lcom/yandex/div2/DivText$Image;-><init>(Lcom/yandex/div2/DivText$Image$Accessibility;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;)V

    return-object v2
.end method
