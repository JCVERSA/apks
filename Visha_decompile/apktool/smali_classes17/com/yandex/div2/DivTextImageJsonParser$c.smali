.class public final Lcom/yandex/div2/DivTextImageJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTextImageJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivTextImageJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTextImageJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivTextTemplate$ImageTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTextImageJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivTextTemplate$ImageTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextTemplate$ImageTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivTextTemplate$ImageTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextTemplate$ImageTemplate;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    move-object/from16 v11, p3

    invoke-static {v11, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v2

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v12

    new-instance v24, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->a:Ltp3;

    move-object v7, v3

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iget-object v3, v0, Lcom/yandex/div2/DivTextImageJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->e8()Lyi5;

    move-result-object v8

    const-string v5, "accessibility"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v14

    const-string v3, "readOptionalField(contex\u2026bilityJsonTemplateParser)"

    invoke-static {v14, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivTextImageJsonParser;->h:Lzbb;

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->b:Ltp3;

    move-object v8, v3

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    sget-object v9, Lcom/yandex/div2/DivTextAlignmentVertical;->FROM_STRING:Le74;

    const-string v5, "alignment_vertical"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v15

    const-string v3, "readOptionalFieldWithExp\u2026mentVertical.FROM_STRING)"

    invoke-static {v15, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->c:Ltp3;

    move-object v7, v3

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    iget-object v3, v0, Lcom/yandex/div2/DivTextImageJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->u3()Lyi5;

    move-result-object v8

    const-string v5, "height"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v10

    const-string v9, "readOptionalField(contex\u2026edSizeJsonTemplateParser)"

    invoke-static {v10, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivTextImageJsonParser;->i:Lzbb;

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->d:Ltp3;

    move-object v8, v3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    sget-object v16, Lcom/yandex/div2/DivText$Image$IndexingDirection;->FROM_STRING:Le74;

    const-string v5, "indexing_direction"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    move-object v13, v9

    move-object/from16 v9, v16

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026ingDirection.FROM_STRING)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lacb;->a:Lzbb;

    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->e:Ltp3;

    move-object v8, v3

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    sget-object v16, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v5, "preload_required"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026Required, ANY_TO_BOOLEAN)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lacb;->b:Lzbb;

    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->f:Ltp3;

    move-object v8, v3

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    sget-object v16, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v18, Lcom/yandex/div2/DivTextImageJsonParser;->k:Lpnb;

    const-string v5, "start"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    move-object/from16 v19, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lra5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v10

    const-string v3, "readFieldWithExpression(\u2026_TO_INT, START_VALIDATOR)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lacb;->f:Lzbb;

    if-eqz v1, :cond_6

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->g:Ltp3;

    move-object v8, v3

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    sget-object v9, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v5, "tint_color"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026lor, STRING_TO_COLOR_INT)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivTextImageJsonParser;->j:Lzbb;

    if-eqz v1, :cond_7

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->h:Ltp3;

    move-object v8, v3

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    :goto_7
    sget-object v18, Lcom/yandex/div2/DivBlendMode;->FROM_STRING:Le74;

    const-string v5, "tint_mode"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026DivBlendMode.FROM_STRING)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lacb;->e:Lzbb;

    if-eqz v1, :cond_8

    iget-object v3, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->i:Ltp3;

    move-object v8, v3

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    :goto_8
    sget-object v18, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v5, "url"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    move-object/from16 v21, v9

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v9}, Lra5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readFieldWithExpression(\u2026 parent?.url, ANY_TO_URI)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->j:Ltp3;

    move-object v7, v1

    goto :goto_9

    :cond_9
    const/4 v7, 0x0

    :goto_9
    iget-object v0, v0, Lcom/yandex/div2/DivTextImageJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->u3()Lyi5;

    move-result-object v8

    const-string v5, "width"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v0

    invoke-static {v0, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v24

    move-object/from16 v18, v19

    move-object/from16 v19, v10

    move-object/from16 v22, v9

    move-object/from16 v23, v0

    invoke-direct/range {v13 .. v23}, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v24
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTextTemplate$ImageTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextImageJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->e8()Lyi5;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->b:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivTextAlignmentVertical;->TO_STRING:Le74;

    const-string v3, "alignment_vertical"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->c:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivTextImageJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->u3()Lyi5;

    move-result-object v2

    const-string v3, "height"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->d:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivText$Image$IndexingDirection;->TO_STRING:Le74;

    const-string v3, "indexing_direction"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v1, "preload_required"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->e:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "start"

    iget-object v2, p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->f:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->g:Ltp3;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v3, "tint_color"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->h:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivBlendMode;->TO_STRING:Le74;

    const-string v3, "tint_mode"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->i:Ltp3;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->c:Le74;

    const-string v3, "url"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object p2, p2, Lcom/yandex/div2/DivTextTemplate$ImageTemplate;->j:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivTextImageJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u3()Lyi5;

    move-result-object p0

    const-string v1, "width"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
