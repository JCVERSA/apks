.class public final Lcom/yandex/div2/DivImageBackgroundJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivImageBackgroundJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivImageBackgroundJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivImageBackgroundJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivImageBackground;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivImageBackground;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivImageBackgroundJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivImageBackground;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivImageBackground;
    .locals 16

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v0, "context"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/yandex/div2/DivImageBackground;

    sget-object v3, Lacb;->d:Lzbb;

    sget-object v4, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v5, Lcom/yandex/div2/DivImageBackgroundJsonParser;->j:Lpnb;

    sget-object v10, Lcom/yandex/div2/DivImageBackgroundJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "alpha"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v6, v10

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v10, v0

    :goto_0
    sget-object v3, Lcom/yandex/div2/DivImageBackgroundJsonParser;->g:Lzbb;

    sget-object v4, Lcom/yandex/div2/DivAlignmentHorizontal;->FROM_STRING:Le74;

    sget-object v6, Lcom/yandex/div2/DivImageBackgroundJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "content_alignment_horizontal"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    sget-object v3, Lcom/yandex/div2/DivImageBackgroundJsonParser;->h:Lzbb;

    sget-object v4, Lcom/yandex/div2/DivAlignmentVertical;->FROM_STRING:Le74;

    sget-object v11, Lcom/yandex/div2/DivImageBackgroundJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "content_alignment_vertical"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v5, v11

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    move-object/from16 v0, p0

    goto :goto_3

    :cond_2
    move-object v11, v0

    goto :goto_2

    :goto_3
    iget-object v0, v0, Lcom/yandex/div2/DivImageBackgroundJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->e3()Lyi5;

    move-result-object v0

    const-string v1, "filters"

    invoke-static {v7, v8, v1, v0}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v12

    sget-object v0, Lacb;->e:Lzbb;

    sget-object v1, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v2, "image_url"

    invoke-static {v7, v8, v2, v0, v1}, Lpa5;->e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v13

    const-string v0, "readExpression(context, \u2026E_HELPER_URI, ANY_TO_URI)"

    invoke-static {v13, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lacb;->a:Lzbb;

    sget-object v4, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v14, Lcom/yandex/div2/DivImageBackgroundJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "preload_required"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v5, v14

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    move-object v14, v0

    :goto_4
    sget-object v3, Lcom/yandex/div2/DivImageBackgroundJsonParser;->i:Lzbb;

    sget-object v4, Lcom/yandex/div2/DivImageScale;->FROM_STRING:Le74;

    sget-object v15, Lcom/yandex/div2/DivImageBackgroundJsonParser;->f:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "scale"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v5, v15

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v8, v15

    goto :goto_5

    :cond_4
    move-object v8, v0

    :goto_5
    move-object v1, v9

    move-object v2, v10

    move-object v3, v6

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v1 .. v8}, Lcom/yandex/div2/DivImageBackground;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v9
.end method

.method public e(Lex7;Lcom/yandex/div2/DivImageBackground;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivImageBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "alpha"

    invoke-static {p1, v0, v2, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivImageBackground;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivAlignmentHorizontal;->TO_STRING:Le74;

    const-string v3, "content_alignment_horizontal"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivImageBackground;->c:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivAlignmentVertical;->TO_STRING:Le74;

    const-string v3, "content_alignment_vertical"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivImageBackground;->d:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/div2/DivImageBackgroundJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->e3()Lyi5;

    move-result-object p0

    const-string v2, "filters"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object p0, p2, Lcom/yandex/div2/DivImageBackground;->e:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->c:Le74;

    const-string v2, "image_url"

    invoke-static {p1, v0, v2, p0, v1}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string p0, "preload_required"

    iget-object v1, p2, Lcom/yandex/div2/DivImageBackground;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, p0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object p0, p2, Lcom/yandex/div2/DivImageBackground;->g:Lcom/yandex/div/json/expressions/Expression;

    sget-object p2, Lcom/yandex/div2/DivImageScale;->TO_STRING:Le74;

    const-string v1, "scale"

    invoke-static {p1, v0, v1, p0, p2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string p0, "type"

    const-string p2, "image"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
