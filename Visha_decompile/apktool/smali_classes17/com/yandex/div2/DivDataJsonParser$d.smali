.class public final Lcom/yandex/div2/DivDataJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivDataJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivDataJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivDataTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivDataJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivDataTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivData;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivDataTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivData;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v1, "context"

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "template"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Lcom/yandex/div2/DivData;

    iget-object v2, v9, Lcom/yandex/div2/DivDataTemplate;->a:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivDataJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->H3()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivDataJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->F3()Lyi5;

    move-result-object v6

    const-string v4, "functions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v11

    iget-object v1, v9, Lcom/yandex/div2/DivDataTemplate;->b:Ltp3;

    const-string v2, "log_id"

    invoke-static {v8, v1, v10, v2}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resolve(context, template.logId, data, \"log_id\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    iget-object v2, v9, Lcom/yandex/div2/DivDataTemplate;->c:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivDataJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->F2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivDataJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->D2()Lyi5;

    move-result-object v6

    sget-object v7, Lcom/yandex/div2/DivDataJsonParser;->d:Lhm5;

    const-string v4, "states"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lsa5;->l(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object v14

    const-string v1, "resolveList(context, tem\u2026Parser, STATES_VALIDATOR)"

    invoke-static {v14, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v9, Lcom/yandex/div2/DivDataTemplate;->d:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivDataJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->I8()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivDataJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->G8()Lyi5;

    move-result-object v6

    const-string v4, "timers"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v15

    iget-object v2, v9, Lcom/yandex/div2/DivDataTemplate;->e:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivDataJsonParser;->c:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivTransitionSelector;->FROM_STRING:Le74;

    sget-object v16, Lcom/yandex/div2/DivDataJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "transition_animation_selector"

    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    move-object/from16 v7, v16

    goto :goto_0

    :cond_0
    move-object v7, v1

    :goto_0
    iget-object v2, v9, Lcom/yandex/div2/DivDataTemplate;->f:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivDataJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->a9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivDataJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Y8()Lyi5;

    move-result-object v6

    const-string v4, "variable_triggers"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v16

    iget-object v1, v9, Lcom/yandex/div2/DivDataTemplate;->g:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/DivDataJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->g9()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/DivDataJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->e9()Lyi5;

    move-result-object v5

    const-string v3, "variables"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v9

    const/16 v0, 0x80

    const/4 v1, 0x0

    const/4 v10, 0x0

    move-object v2, v13

    move-object v3, v11

    move-object v4, v12

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v8, v16

    move v11, v0

    move-object v12, v1

    invoke-direct/range {v2 .. v12}, Lcom/yandex/div2/DivData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v13
.end method
