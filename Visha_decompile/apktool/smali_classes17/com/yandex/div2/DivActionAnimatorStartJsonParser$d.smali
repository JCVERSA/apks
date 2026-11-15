.class public final Lcom/yandex/div2/DivActionAnimatorStartJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivActionAnimatorStartJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionAnimatorStartTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivActionAnimatorStartTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionAnimatorStart;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivActionAnimatorStartTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionAnimatorStart;
    .locals 20

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

    new-instance v11, Lcom/yandex/div2/DivActionAnimatorStart;

    iget-object v1, v9, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->a:Ltp3;

    const-string v2, "animator_id"

    invoke-static {v8, v1, v10, v2}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resolve(context, templat\u2026rId, data, \"animator_id\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    iget-object v2, v9, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->b:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->b:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivAnimationDirection;->FROM_STRING:Le74;

    const-string v4, "direction"

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v13

    iget-object v2, v9, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->c:Ltp3;

    sget-object v14, Lacb;->b:Lzbb;

    sget-object v15, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->d:Lpnb;

    const-string v4, "duration"

    move-object v5, v14

    move-object v6, v15

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v16

    iget-object v2, v9, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->d:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->d9()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->b9()Lyi5;

    move-result-object v6

    const-string v4, "end_value"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/yandex/div2/DivTypedValue;

    iget-object v2, v9, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->e:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->c:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    const-string v4, "interpolator"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v18

    iget-object v2, v9, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->f:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u2()Lyi5;

    move-result-object v5

    iget-object v1, v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->s2()Lyi5;

    move-result-object v6

    const-string v4, "repeat_count"

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/yandex/div2/DivCount;

    iget-object v2, v9, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->g:Ltp3;

    const-string v4, "start_delay"

    sget-object v7, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->e:Lpnb;

    move-object/from16 v1, p1

    move-object v5, v14

    move-object v6, v15

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v14

    iget-object v1, v9, Lcom/yandex/div2/DivActionAnimatorStartTemplate;->h:Ltp3;

    iget-object v2, v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->d9()Lyi5;

    move-result-object v4

    iget-object v0, v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->b9()Lyi5;

    move-result-object v5

    const-string v3, "start_value"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/yandex/div2/DivTypedValue;

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object v9, v14

    invoke-direct/range {v2 .. v10}, Lcom/yandex/div2/DivActionAnimatorStart;-><init>(Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTypedValue;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCount;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTypedValue;)V

    return-object v11
.end method
