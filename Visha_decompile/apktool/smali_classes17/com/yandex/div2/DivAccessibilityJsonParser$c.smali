.class public final Lcom/yandex/div2/DivAccessibilityJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivAccessibilityJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivAccessibilityJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivAccessibilityTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivAccessibilityJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivAccessibilityTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivAccessibilityTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivAccessibilityJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivAccessibilityTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAccessibilityTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivAccessibilityTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAccessibilityTemplate;
    .locals 20

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

    new-instance v11, Lcom/yandex/div2/DivAccessibilityTemplate;

    sget-object v12, Lacb;->c:Lzbb;

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/yandex/div2/DivAccessibilityTemplate;->a:Ltp3;

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v13

    :goto_0
    const-string v4, "description"

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v5, v12

    move v6, v1

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v14

    const-string v2, "readOptionalFieldWithExp\u2026ide, parent?.description)"

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/yandex/div2/DivAccessibilityTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v13

    :goto_1
    const-string v4, "hint"

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v5, v12

    move v6, v1

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v15

    const-string v2, "readOptionalFieldWithExp\u2026owOverride, parent?.hint)"

    invoke-static {v15, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v16, Lacb;->a:Lzbb;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/yandex/div2/DivAccessibilityTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v13

    :goto_2
    sget-object v17, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v4, "is_checked"

    move-object v2, v10

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move v6, v1

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026sChecked, ANY_TO_BOOLEAN)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivAccessibilityJsonParser;->e:Lzbb;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/yandex/div2/DivAccessibilityTemplate;->d:Ltp3;

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v7, v13

    :goto_3
    sget-object v18, Lcom/yandex/div2/DivAccessibility$Mode;->FROM_STRING:Le74;

    const-string v4, "mode"

    move-object v2, v10

    move-object/from16 v3, p3

    move v6, v1

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026ibility.Mode.FROM_STRING)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/yandex/div2/DivAccessibilityTemplate;->e:Ltp3;

    move-object v7, v2

    goto :goto_4

    :cond_4
    move-object v7, v13

    :goto_4
    const-string v4, "mute_after_action"

    move-object v2, v10

    move-object/from16 v3, p3

    move-object/from16 v5, v16

    move v6, v1

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026erAction, ANY_TO_BOOLEAN)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/yandex/div2/DivAccessibilityTemplate;->f:Ltp3;

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object v7, v13

    :goto_5
    const-string v4, "state_description"

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v5, v12

    move v6, v1

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v12

    const-string v2, "readOptionalFieldWithExp\u2026parent?.stateDescription)"

    invoke-static {v12, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/yandex/div2/DivAccessibilityTemplate;->g:Ltp3;

    move-object v6, v0

    goto :goto_6

    :cond_6
    move-object v6, v13

    :goto_6
    sget-object v7, Lcom/yandex/div2/DivAccessibility$Type;->FROM_STRING:Le74;

    const-string v4, "type"

    move-object v2, v10

    move-object/from16 v3, p3

    move v5, v1

    invoke-static/range {v2 .. v7}, Lra5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v0, "readOptionalField(contex\u2026ibility.Type.FROM_STRING)"

    invoke-static {v9, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v11

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v19

    move-object/from16 v6, v16

    move-object v7, v8

    move-object v8, v12

    invoke-direct/range {v2 .. v9}, Lcom/yandex/div2/DivAccessibilityTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v11
.end method

.method public e(Lex7;Lcom/yandex/div2/DivAccessibilityTemplate;)Lorg/json/JSONObject;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivAccessibilityTemplate;->a:Ltp3;

    const-string v1, "description"

    invoke-static {p1, p0, v1, v0}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "hint"

    iget-object v1, p2, Lcom/yandex/div2/DivAccessibilityTemplate;->b:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "is_checked"

    iget-object v1, p2, Lcom/yandex/div2/DivAccessibilityTemplate;->c:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v0, p2, Lcom/yandex/div2/DivAccessibilityTemplate;->d:Ltp3;

    sget-object v1, Lcom/yandex/div2/DivAccessibility$Mode;->TO_STRING:Le74;

    const-string v2, "mode"

    invoke-static {p1, p0, v2, v0, v1}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string v0, "mute_after_action"

    iget-object v1, p2, Lcom/yandex/div2/DivAccessibilityTemplate;->e:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "state_description"

    iget-object v1, p2, Lcom/yandex/div2/DivAccessibilityTemplate;->f:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p2, p2, Lcom/yandex/div2/DivAccessibilityTemplate;->g:Ltp3;

    sget-object v0, Lcom/yandex/div2/DivAccessibility$Type;->TO_STRING:Le74;

    const-string v1, "type"

    invoke-static {p1, p0, v1, p2, v0}, Lra5;->H(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    return-object p0
.end method
