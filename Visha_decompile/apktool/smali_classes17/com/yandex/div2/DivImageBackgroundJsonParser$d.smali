.class public final Lcom/yandex/div2/DivImageBackgroundJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivImageBackgroundJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivImageBackgroundJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivImageBackgroundTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivImageBackgroundJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivImageBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivImageBackground;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivImageBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivImageBackground;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v11, p1

    invoke-static {v11, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "template"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    move-object/from16 v12, p3

    invoke-static {v12, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/div2/DivImageBackground;

    iget-object v4, v1, Lcom/yandex/div2/DivImageBackgroundTemplate;->a:Ltp3;

    sget-object v7, Lacb;->d:Lzbb;

    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v9, Lcom/yandex/div2/DivImageBackgroundJsonParser;->j:Lpnb;

    sget-object v13, Lcom/yandex/div2/DivImageBackgroundJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "alpha"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object v10, v13

    invoke-static/range {v3 .. v10}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v13, v3

    :goto_0
    iget-object v4, v1, Lcom/yandex/div2/DivImageBackgroundTemplate;->b:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivImageBackgroundJsonParser;->g:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivAlignmentHorizontal;->FROM_STRING:Le74;

    sget-object v10, Lcom/yandex/div2/DivImageBackgroundJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "content_alignment_horizontal"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object v9, v10

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v10, v3

    :goto_1
    iget-object v4, v1, Lcom/yandex/div2/DivImageBackgroundTemplate;->c:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivImageBackgroundJsonParser;->h:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivAlignmentVertical;->FROM_STRING:Le74;

    sget-object v14, Lcom/yandex/div2/DivImageBackgroundJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "content_alignment_vertical"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object v9, v14

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v14, v3

    :goto_2
    iget-object v4, v1, Lcom/yandex/div2/DivImageBackgroundTemplate;->d:Ltp3;

    iget-object v3, v0, Lcom/yandex/div2/DivImageBackgroundJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->g3()Lyi5;

    move-result-object v7

    iget-object v0, v0, Lcom/yandex/div2/DivImageBackgroundJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->e3()Lyi5;

    move-result-object v8

    const-string v6, "filters"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v0

    iget-object v4, v1, Lcom/yandex/div2/DivImageBackgroundTemplate;->e:Ltp3;

    sget-object v7, Lacb;->e:Lzbb;

    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v6, "image_url"

    invoke-static/range {v3 .. v8}, Lsa5;->h(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v15

    const-string v3, "resolveExpression(contex\u2026E_HELPER_URI, ANY_TO_URI)"

    invoke-static {v15, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/yandex/div2/DivImageBackgroundTemplate;->f:Ltp3;

    sget-object v7, Lacb;->a:Lzbb;

    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v16, Lcom/yandex/div2/DivImageBackgroundJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "preload_required"

    move-object/from16 v3, p1

    move-object/from16 v9, v16

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v16, v3

    :goto_3
    iget-object v4, v1, Lcom/yandex/div2/DivImageBackgroundTemplate;->g:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivImageBackgroundJsonParser;->i:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivImageScale;->FROM_STRING:Le74;

    sget-object v1, Lcom/yandex/div2/DivImageBackgroundJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "scale"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object v9, v1

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    move-object v3, v2

    move-object v4, v13

    move-object v5, v10

    move-object v6, v14

    move-object v7, v0

    move-object v8, v15

    move-object/from16 v9, v16

    move-object v10, v1

    invoke-direct/range {v3 .. v10}, Lcom/yandex/div2/DivImageBackground;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v2
.end method
