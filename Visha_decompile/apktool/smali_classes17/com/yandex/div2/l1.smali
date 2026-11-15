.class public final Lcom/yandex/div2/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/l1;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/l1;->e(Lex7;Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/l1;->d(Lex7;Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;
    .locals 16

    move-object/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    move-object/from16 v8, p3

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v1

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v9

    new-instance v10, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;

    sget-object v11, Lacb;->c:Lzbb;

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->a:Ltp3;

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v12

    :goto_0
    const-string v4, "down"

    move-object v2, v9

    move-object/from16 v3, p3

    move-object v5, v11

    move v6, v1

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v13

    const-string v2, "readOptionalFieldWithExp\u2026owOverride, parent?.down)"

    invoke-static {v13, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v12

    :goto_1
    const-string v4, "forward"

    move-object v2, v9

    move-object/from16 v3, p3

    move-object v5, v11

    move v6, v1

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v14

    const-string v2, "readOptionalFieldWithExp\u2026verride, parent?.forward)"

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v12

    :goto_2
    const-string v4, "left"

    move-object v2, v9

    move-object/from16 v3, p3

    move-object v5, v11

    move v6, v1

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v15

    const-string v2, "readOptionalFieldWithExp\u2026owOverride, parent?.left)"

    invoke-static {v15, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->d:Ltp3;

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v7, v12

    :goto_3
    const-string v4, "right"

    move-object v2, v9

    move-object/from16 v3, p3

    move-object v5, v11

    move v6, v1

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readOptionalFieldWithExp\u2026wOverride, parent?.right)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->e:Ltp3;

    move-object v12, v0

    :cond_4
    const-string v4, "up"

    move-object v2, v9

    move-object/from16 v3, p3

    move-object v5, v11

    move v6, v1

    move-object v0, v7

    move-object v7, v12

    invoke-static/range {v2 .. v7}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v1, "readOptionalFieldWithExp\u2026llowOverride, parent?.up)"

    invoke-static {v7, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v10

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v10
.end method

.method public e(Lex7;Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;)Lorg/json/JSONObject;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->a:Ltp3;

    const-string v1, "down"

    invoke-static {p1, p0, v1, v0}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "forward"

    iget-object v1, p2, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->b:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "left"

    iget-object v1, p2, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->c:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "right"

    iget-object v1, p2, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->d:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "up"

    iget-object p2, p2, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->e:Ltp3;

    invoke-static {p1, p0, v0, p2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    return-object p0
.end method
