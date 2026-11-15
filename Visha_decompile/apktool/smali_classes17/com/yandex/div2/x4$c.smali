.class public final Lcom/yandex/div2/x4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/x4;
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

    iput-object p1, p0, Lcom/yandex/div2/x4$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTimerTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/x4$c;->e(Lex7;Lcom/yandex/div2/DivTimerTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTimerTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/x4$c;->d(Lex7;Lcom/yandex/div2/DivTimerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTimerTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivTimerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTimerTemplate;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v10, p3

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-static {v10, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v11

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v12

    new-instance v13, Lcom/yandex/div2/DivTimerTemplate;

    sget-object v14, Lacb;->b:Lzbb;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/yandex/div2/DivTimerTemplate;->a:Ltp3;

    move-object v7, v2

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    sget-object v16, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v9, Lcom/yandex/div2/x4;->c:Lpnb;

    const-string v4, "duration"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object v5, v14

    move v6, v11

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_INT, DURATION_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/yandex/div2/DivTimerTemplate;->b:Ltp3;

    move-object v6, v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget-object v2, v0, Lcom/yandex/div2/x4$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v7

    const-string v4, "end_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v7, "readOptionalListField(co\u2026ActionJsonTemplateParser)"

    invoke-static {v8, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/yandex/div2/DivTimerTemplate;->c:Ltp3;

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const-string v3, "id"

    invoke-static {v12, v10, v3, v11, v2}, Lra5;->c(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v6

    const-string v2, "readField(context, data,\u2026llowOverride, parent?.id)"

    invoke-static {v6, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/yandex/div2/DivTimerTemplate;->d:Ltp3;

    move-object/from16 v17, v2

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    :goto_3
    iget-object v0, v0, Lcom/yandex/div2/x4$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v0

    const-string v4, "tick_actions"

    move-object v2, v12

    move-object/from16 v3, p3

    move v5, v11

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    move-object v15, v7

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v0

    invoke-static {v0, v15}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/yandex/div2/DivTimerTemplate;->e:Ltp3;

    move-object v7, v2

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    sget-object v15, Lcom/yandex/div2/x4;->d:Lpnb;

    const-string v4, "tick_interval"

    move-object v2, v12

    move-object/from16 v3, p3

    move-object v5, v14

    move v6, v11

    move-object v14, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v9

    move-object v9, v15

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v5

    const-string v2, "readOptionalFieldWithExp\u2026 TICK_INTERVAL_VALIDATOR)"

    invoke-static {v5, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    iget-object v15, v1, Lcom/yandex/div2/DivTimerTemplate;->f:Ltp3;

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_5
    const-string v1, "value_variable"

    invoke-static {v12, v10, v1, v11, v15}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v6

    const-string v1, "readOptionalField(contex\u2026e, parent?.valueVariable)"

    invoke-static {v6, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    move-object v0, v13

    move-object/from16 v1, v16

    move-object v2, v14

    move-object/from16 v3, v18

    invoke-direct/range {v0 .. v6}, Lcom/yandex/div2/DivTimerTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v13
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTimerTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivTimerTemplate;->a:Ltp3;

    const-string v2, "duration"

    invoke-static {p1, v0, v2, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTimerTemplate;->b:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/x4$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v2

    const-string v3, "end_actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "id"

    iget-object v2, p2, Lcom/yandex/div2/DivTimerTemplate;->c:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTimerTemplate;->d:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/x4$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object p0

    const-string v2, "tick_actions"

    invoke-static {p1, v0, v2, v1, p0}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string p0, "tick_interval"

    iget-object v1, p2, Lcom/yandex/div2/DivTimerTemplate;->e:Ltp3;

    invoke-static {p1, v0, p0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string p0, "value_variable"

    iget-object p2, p2, Lcom/yandex/div2/DivTimerTemplate;->f:Ltp3;

    invoke-static {p1, v0, p0, p2}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    return-object v0
.end method
