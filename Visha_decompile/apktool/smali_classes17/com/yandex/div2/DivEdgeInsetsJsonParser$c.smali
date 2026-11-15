.class public final Lcom/yandex/div2/DivEdgeInsetsJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivEdgeInsetsJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivEdgeInsetsJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivEdgeInsetsTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivEdgeInsetsJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivEdgeInsetsTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivEdgeInsetsTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivEdgeInsetsJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivEdgeInsetsTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivEdgeInsetsTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivEdgeInsetsTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivEdgeInsetsTemplate;
    .locals 21

    move-object/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    move-object/from16 v10, p3

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v1

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v11

    new-instance v12, Lcom/yandex/div2/DivEdgeInsetsTemplate;

    sget-object v13, Lacb;->b:Lzbb;

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/yandex/div2/DivEdgeInsetsTemplate;->a:Ltp3;

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v14

    :goto_0
    sget-object v15, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v9, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->h:Lpnb;

    const-string v4, "bottom"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v13

    move v6, v1

    move-object v8, v15

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026TO_INT, BOTTOM_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/yandex/div2/DivEdgeInsetsTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v14

    :goto_1
    sget-object v16, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->i:Lpnb;

    const-string v4, "end"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v13

    move v6, v1

    move-object v8, v15

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026ER_TO_INT, END_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/yandex/div2/DivEdgeInsetsTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v14

    :goto_2
    sget-object v16, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->j:Lpnb;

    const-string v4, "left"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v13

    move v6, v1

    move-object v8, v15

    move-object/from16 v18, v9

    move-object/from16 v9, v16

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026R_TO_INT, LEFT_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/yandex/div2/DivEdgeInsetsTemplate;->d:Ltp3;

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v7, v14

    :goto_3
    sget-object v16, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->k:Lpnb;

    const-string v4, "right"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v13

    move v6, v1

    move-object v8, v15

    move-object/from16 v19, v9

    move-object/from16 v9, v16

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_TO_INT, RIGHT_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/yandex/div2/DivEdgeInsetsTemplate;->e:Ltp3;

    move-object v7, v2

    goto :goto_4

    :cond_4
    move-object v7, v14

    :goto_4
    sget-object v16, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->l:Lpnb;

    const-string v4, "start"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v13

    move v6, v1

    move-object v8, v15

    move-object/from16 v20, v9

    move-object/from16 v9, v16

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_TO_INT, START_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/yandex/div2/DivEdgeInsetsTemplate;->f:Ltp3;

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object v7, v14

    :goto_5
    sget-object v16, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->m:Lpnb;

    const-string v4, "top"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v13

    move v6, v1

    move-object v8, v15

    move-object v13, v9

    move-object/from16 v9, v16

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026ER_TO_INT, TOP_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivEdgeInsetsJsonParser;->g:Lzbb;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/yandex/div2/DivEdgeInsetsTemplate;->g:Ltp3;

    move-object v7, v0

    goto :goto_6

    :cond_6
    move-object v7, v14

    :goto_6
    sget-object v8, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    const-string v4, "unit"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v0

    const-string v1, "readOptionalFieldWithExp\u2026 DivSizeUnit.FROM_STRING)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v12

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object v7, v13

    move-object v8, v9

    move-object v9, v0

    invoke-direct/range {v2 .. v9}, Lcom/yandex/div2/DivEdgeInsetsTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v12
.end method

.method public e(Lex7;Lcom/yandex/div2/DivEdgeInsetsTemplate;)Lorg/json/JSONObject;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivEdgeInsetsTemplate;->a:Ltp3;

    const-string v1, "bottom"

    invoke-static {p1, p0, v1, v0}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "end"

    iget-object v1, p2, Lcom/yandex/div2/DivEdgeInsetsTemplate;->b:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "left"

    iget-object v1, p2, Lcom/yandex/div2/DivEdgeInsetsTemplate;->c:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "right"

    iget-object v1, p2, Lcom/yandex/div2/DivEdgeInsetsTemplate;->d:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "start"

    iget-object v1, p2, Lcom/yandex/div2/DivEdgeInsetsTemplate;->e:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "top"

    iget-object v1, p2, Lcom/yandex/div2/DivEdgeInsetsTemplate;->f:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p2, p2, Lcom/yandex/div2/DivEdgeInsetsTemplate;->g:Ltp3;

    sget-object v0, Lcom/yandex/div2/DivSizeUnit;->TO_STRING:Le74;

    const-string v1, "unit"

    invoke-static {p1, p0, v1, p2, v0}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    return-object p0
.end method
