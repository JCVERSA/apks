.class public final Lcom/yandex/div2/DivAccessibilityJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivAccessibilityJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivAccessibilityJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivAccessibilityJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAccessibility;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivAccessibility;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivAccessibilityJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivAccessibility;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAccessibility;
    .locals 17

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-string v0, "context"

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/yandex/div2/DivAccessibility;

    sget-object v8, Lacb;->c:Lzbb;

    const-string v0, "description"

    invoke-static {v6, v7, v0, v8}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v10

    const-string v0, "hint"

    invoke-static {v6, v7, v0, v8}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v11

    sget-object v12, Lacb;->a:Lzbb;

    sget-object v13, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v0, "is_checked"

    invoke-static {v6, v7, v0, v12, v13}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v14

    sget-object v3, Lcom/yandex/div2/DivAccessibilityJsonParser;->e:Lzbb;

    sget-object v4, Lcom/yandex/div2/DivAccessibility$Mode;->FROM_STRING:Le74;

    sget-object v15, Lcom/yandex/div2/DivAccessibilityJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "mode"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v5, v15

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v15, v0

    :goto_0
    sget-object v16, Lcom/yandex/div2/DivAccessibilityJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "mute_after_action"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v16, v0

    :goto_1
    const-string v0, "state_description"

    invoke-static {v6, v7, v0, v8}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    const-string v1, "type"

    sget-object v2, Lcom/yandex/div2/DivAccessibility$Type;->FROM_STRING:Le74;

    invoke-static {v6, v7, v1, v2}, Ltb5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAccessibility$Type;

    if-nez v1, :cond_2

    sget-object v1, Lcom/yandex/div2/DivAccessibilityJsonParser;->d:Lcom/yandex/div2/DivAccessibility$Type;

    :cond_2
    move-object v8, v1

    const-string v1, "JsonPropertyParser.readO\u2026NG) ?: TYPE_DEFAULT_VALUE"

    invoke-static {v8, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object v7, v0

    invoke-direct/range {v1 .. v8}, Lcom/yandex/div2/DivAccessibility;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivAccessibility$Type;)V

    return-object v9
.end method

.method public e(Lex7;Lcom/yandex/div2/DivAccessibility;)Lorg/json/JSONObject;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivAccessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v1, "description"

    invoke-static {p1, p0, v1, v0}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "hint"

    iget-object v1, p2, Lcom/yandex/div2/DivAccessibility;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "is_checked"

    iget-object v1, p2, Lcom/yandex/div2/DivAccessibility;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v0, p2, Lcom/yandex/div2/DivAccessibility;->d:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivAccessibility$Mode;->TO_STRING:Le74;

    const-string v2, "mode"

    invoke-static {p1, p0, v2, v0, v1}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v0, "mute_after_action"

    iget-object v1, p2, Lcom/yandex/div2/DivAccessibility;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "state_description"

    iget-object v1, p2, Lcom/yandex/div2/DivAccessibility;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object p2, p2, Lcom/yandex/div2/DivAccessibility;->g:Lcom/yandex/div2/DivAccessibility$Type;

    sget-object v0, Lcom/yandex/div2/DivAccessibility$Type;->TO_STRING:Le74;

    const-string v1, "type"

    invoke-static {p1, p0, v1, p2, v0}, Ltb5;->w(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Le74;)V

    return-object p0
.end method
