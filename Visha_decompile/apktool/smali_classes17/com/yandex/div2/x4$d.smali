.class public final Lcom/yandex/div2/x4$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/x4;
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

    iput-object p1, p0, Lcom/yandex/div2/x4$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTimerTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/x4$d;->b(Lex7;Lcom/yandex/div2/DivTimerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTimer;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTimerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTimer;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v1, "context"

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "template"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/yandex/div2/DivTimer;

    iget-object v2, v10, Lcom/yandex/div2/DivTimerTemplate;->a:Ltp3;

    sget-object v13, Lacb;->b:Lzbb;

    sget-object v14, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/x4;->c:Lpnb;

    sget-object v15, Lcom/yandex/div2/x4;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "duration"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v13

    move-object v6, v14

    move-object v8, v15

    invoke-static/range {v1 .. v8}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v15, v1

    :goto_0
    iget-object v2, v10, Lcom/yandex/div2/DivTimerTemplate;->b:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/x4$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/x4$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    const-string v4, "end_actions"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v7

    iget-object v1, v10, Lcom/yandex/div2/DivTimerTemplate;->c:Ltp3;

    const-string v2, "id"

    invoke-static {v9, v1, v11, v2}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resolve(context, template.id, data, \"id\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    iget-object v1, v10, Lcom/yandex/div2/DivTimerTemplate;->d:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/x4$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/x4$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v5

    const-string v3, "tick_actions"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v16

    iget-object v1, v10, Lcom/yandex/div2/DivTimerTemplate;->e:Ltp3;

    const-string v3, "tick_interval"

    sget-object v6, Lcom/yandex/div2/x4;->d:Lpnb;

    move-object v4, v13

    move-object v5, v14

    invoke-static/range {v0 .. v6}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    iget-object v1, v10, Lcom/yandex/div2/DivTimerTemplate;->f:Ltp3;

    const-string v2, "value_variable"

    invoke-static {v9, v1, v11, v2}, Lsa5;->m(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v12

    move-object v3, v15

    move-object v4, v7

    move-object v5, v8

    move-object/from16 v6, v16

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/yandex/div2/DivTimer;-><init>(Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;)V

    return-object v12
.end method
