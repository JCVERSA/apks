.class public final Lcom/yandex/div2/DivActionScrollByJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivActionScrollByJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivActionScrollByJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionScrollByTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionScrollByJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivActionScrollByTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionScrollByTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivActionScrollByJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivActionScrollByTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollByTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivActionScrollByTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollByTemplate;
    .locals 17

    move-object/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    move-object/from16 v9, p3

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v1

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v10

    new-instance v11, Lcom/yandex/div2/DivActionScrollByTemplate;

    sget-object v5, Lacb;->a:Lzbb;

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/yandex/div2/DivActionScrollByTemplate;->a:Ltp3;

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v12

    :goto_0
    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v4, "animated"

    move-object v2, v10

    move-object/from16 v3, p3

    move v6, v1

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v13

    const-string v2, "readOptionalFieldWithExp\u2026animated, ANY_TO_BOOLEAN)"

    invoke-static {v13, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->c:Lzbb;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/yandex/div2/DivActionScrollByTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v12

    :goto_1
    const-string v4, "id"

    move-object v2, v10

    move-object/from16 v3, p3

    move v6, v1

    invoke-static/range {v2 .. v7}, Lra5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v14

    const-string v2, "readFieldWithExpression(\u2026llowOverride, parent?.id)"

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Lacb;->b:Lzbb;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/yandex/div2/DivActionScrollByTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v12

    :goto_2
    sget-object v16, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    const-string v4, "item_count"

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v5, v15

    move v6, v1

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026itemCount, NUMBER_TO_INT)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/yandex/div2/DivActionScrollByTemplate;->d:Ltp3;

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v7, v12

    :goto_3
    const-string v4, "offset"

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v5, v15

    move v6, v1

    move-object v15, v8

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026t?.offset, NUMBER_TO_INT)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivActionScrollByJsonParser;->f:Lzbb;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/yandex/div2/DivActionScrollByTemplate;->e:Ltp3;

    move-object v7, v0

    goto :goto_4

    :cond_4
    move-object v7, v12

    :goto_4
    sget-object v0, Lcom/yandex/div2/DivActionScrollBy$Overflow;->FROM_STRING:Le74;

    const-string v4, "overflow"

    move-object v2, v10

    move-object/from16 v3, p3

    move v6, v1

    move-object v1, v8

    move-object v8, v0

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v7

    const-string v0, "readOptionalFieldWithExp\u2026lBy.Overflow.FROM_STRING)"

    invoke-static {v7, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v11

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/yandex/div2/DivActionScrollByTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v11
.end method

.method public e(Lex7;Lcom/yandex/div2/DivActionScrollByTemplate;)Lorg/json/JSONObject;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivActionScrollByTemplate;->a:Ltp3;

    const-string v1, "animated"

    invoke-static {p1, p0, v1, v0}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "id"

    iget-object v1, p2, Lcom/yandex/div2/DivActionScrollByTemplate;->b:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "item_count"

    iget-object v1, p2, Lcom/yandex/div2/DivActionScrollByTemplate;->c:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "offset"

    iget-object v1, p2, Lcom/yandex/div2/DivActionScrollByTemplate;->d:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p2, p2, Lcom/yandex/div2/DivActionScrollByTemplate;->e:Ltp3;

    sget-object v0, Lcom/yandex/div2/DivActionScrollBy$Overflow;->TO_STRING:Le74;

    const-string v1, "overflow"

    invoke-static {p1, p0, v1, p2, v0}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string p2, "type"

    const-string v0, "scroll_by"

    invoke-static {p1, p0, p2, v0}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
