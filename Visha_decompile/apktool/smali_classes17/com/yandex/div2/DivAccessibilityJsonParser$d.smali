.class public final Lcom/yandex/div2/DivAccessibilityJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivAccessibilityJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivAccessibilityJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivAccessibilityTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivAccessibilityJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivAccessibilityTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAccessibility;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivAccessibilityTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAccessibility;
    .locals 19

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "context"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/yandex/div2/DivAccessibility;

    iget-object v0, v8, Lcom/yandex/div2/DivAccessibilityTemplate;->a:Ltp3;

    sget-object v11, Lacb;->c:Lzbb;

    const-string v1, "description"

    invoke-static {v7, v0, v9, v1, v11}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v12

    iget-object v0, v8, Lcom/yandex/div2/DivAccessibilityTemplate;->b:Ltp3;

    const-string v1, "hint"

    invoke-static {v7, v0, v9, v1, v11}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v13

    iget-object v1, v8, Lcom/yandex/div2/DivAccessibilityTemplate;->c:Ltp3;

    sget-object v14, Lacb;->a:Lzbb;

    sget-object v15, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v3, "is_checked"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object v4, v14

    move-object v5, v15

    invoke-static/range {v0 .. v5}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v16

    iget-object v1, v8, Lcom/yandex/div2/DivAccessibilityTemplate;->d:Ltp3;

    sget-object v4, Lcom/yandex/div2/DivAccessibilityJsonParser;->e:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivAccessibility$Mode;->FROM_STRING:Le74;

    sget-object v17, Lcom/yandex/div2/DivAccessibilityJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "mode"

    move-object/from16 v6, v17

    invoke-static/range {v0 .. v6}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v17, v0

    :goto_0
    iget-object v1, v8, Lcom/yandex/div2/DivAccessibilityTemplate;->e:Ltp3;

    sget-object v18, Lcom/yandex/div2/DivAccessibilityJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "mute_after_action"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v18

    invoke-static/range {v0 .. v6}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_1

    move-object/from16 v6, v18

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    iget-object v0, v8, Lcom/yandex/div2/DivAccessibilityTemplate;->f:Ltp3;

    const-string v1, "state_description"

    invoke-static {v7, v0, v9, v1, v11}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    iget-object v1, v8, Lcom/yandex/div2/DivAccessibilityTemplate;->g:Ltp3;

    const-string v2, "type"

    sget-object v3, Lcom/yandex/div2/DivAccessibility$Type;->FROM_STRING:Le74;

    invoke-static {v7, v1, v9, v2, v3}, Lsa5;->n(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Le74;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAccessibility$Type;

    if-nez v1, :cond_2

    sget-object v1, Lcom/yandex/div2/DivAccessibilityJsonParser;->d:Lcom/yandex/div2/DivAccessibility$Type;

    :cond_2
    move-object v8, v1

    const-string v1, "JsonFieldResolver.resolv\u2026NG) ?: TYPE_DEFAULT_VALUE"

    invoke-static {v8, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v10

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object v7, v0

    invoke-direct/range {v1 .. v8}, Lcom/yandex/div2/DivAccessibility;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivAccessibility$Type;)V

    return-object v10
.end method
