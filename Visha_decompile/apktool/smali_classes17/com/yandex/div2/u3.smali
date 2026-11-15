.class public final Lcom/yandex/div2/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/u3;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/u3;->b(Lex7;Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlider$Range;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlider$Range;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v9, p1

    invoke-static {v9, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "template"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    move-object/from16 v10, p3

    invoke-static {v10, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/div2/DivSlider$Range;

    iget-object v4, v1, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->a:Ltp3;

    sget-object v11, Lacb;->b:Lzbb;

    sget-object v12, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    const-string v6, "end"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object v7, v11

    move-object v8, v12

    invoke-static/range {v3 .. v8}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v13

    iget-object v4, v1, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->b:Ltp3;

    iget-object v3, v0, Lcom/yandex/div2/u3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v7

    iget-object v3, v0, Lcom/yandex/div2/u3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v8

    const-string v6, "margins"

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/yandex/div2/DivEdgeInsets;

    iget-object v4, v1, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->c:Ltp3;

    const-string v6, "start"

    move-object/from16 v3, p1

    move-object v7, v11

    move-object v8, v12

    invoke-static/range {v3 .. v8}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v11

    iget-object v4, v1, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->d:Ltp3;

    iget-object v3, v0, Lcom/yandex/div2/u3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->U2()Lyi5;

    move-result-object v7

    iget-object v3, v0, Lcom/yandex/div2/u3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->S2()Lyi5;

    move-result-object v8

    const-string v6, "track_active_style"

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/yandex/div2/DivDrawable;

    iget-object v4, v1, Lcom/yandex/div2/DivSliderTemplate$RangeTemplate;->e:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/u3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->U2()Lyi5;

    move-result-object v7

    iget-object v0, v0, Lcom/yandex/div2/u3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->S2()Lyi5;

    move-result-object v8

    const-string v6, "track_inactive_style"

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/yandex/div2/DivDrawable;

    move-object v3, v2

    move-object v4, v13

    move-object v5, v14

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v3 .. v8}, Lcom/yandex/div2/DivSlider$Range;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivDrawable;Lcom/yandex/div2/DivDrawable;)V

    return-object v2
.end method
