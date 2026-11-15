.class public final Lcom/yandex/div2/DivImageBackgroundJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivImageBackgroundJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivImageBackgroundJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivImageBackgroundTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivImageBackgroundJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivImageBackgroundTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivImageBackgroundTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivImageBackgroundJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivImageBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivImageBackgroundTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivImageBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivImageBackgroundTemplate;
    .locals 19

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

    new-instance v12, Lcom/yandex/div2/DivImageBackgroundTemplate;

    sget-object v5, Lacb;->d:Lzbb;

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/yandex/div2/DivImageBackgroundTemplate;->a:Ltp3;

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v13

    :goto_0
    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v9, Lcom/yandex/div2/DivImageBackgroundJsonParser;->j:Lpnb;

    const-string v4, "alpha"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_DOUBLE, ALPHA_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivImageBackgroundJsonParser;->g:Lzbb;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/yandex/div2/DivImageBackgroundTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v13

    :goto_1
    sget-object v8, Lcom/yandex/div2/DivAlignmentHorizontal;->FROM_STRING:Le74;

    const-string v4, "content_alignment_horizontal"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v14

    const-string v2, "readOptionalFieldWithExp\u2026ntHorizontal.FROM_STRING)"

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivImageBackgroundJsonParser;->h:Lzbb;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/yandex/div2/DivImageBackgroundTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v13

    :goto_2
    sget-object v8, Lcom/yandex/div2/DivAlignmentVertical;->FROM_STRING:Le74;

    const-string v4, "content_alignment_vertical"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v15

    const-string v2, "readOptionalFieldWithExp\u2026mentVertical.FROM_STRING)"

    invoke-static {v15, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/yandex/div2/DivImageBackgroundTemplate;->d:Ltp3;

    move-object v6, v2

    move-object/from16 v2, p0

    goto :goto_3

    :cond_3
    move-object/from16 v2, p0

    move-object v6, v13

    :goto_3
    iget-object v2, v2, Lcom/yandex/div2/DivImageBackgroundJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->f3()Lyi5;

    move-result-object v7

    const-string v4, "filters"

    move-object v2, v11

    move-object/from16 v3, p3

    move v5, v1

    invoke-static/range {v2 .. v7}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalListField(co\u2026FilterJsonTemplateParser)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->e:Lzbb;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/yandex/div2/DivImageBackgroundTemplate;->e:Ltp3;

    move-object v7, v2

    goto :goto_4

    :cond_4
    move-object v7, v13

    :goto_4
    sget-object v16, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v4, "image_url"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    move-object/from16 v17, v8

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lra5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readFieldWithExpression(\u2026nt?.imageUrl, ANY_TO_URI)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lacb;->a:Lzbb;

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/yandex/div2/DivImageBackgroundTemplate;->f:Ltp3;

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object v7, v13

    :goto_5
    sget-object v16, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v4, "preload_required"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    move-object/from16 v18, v8

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v8

    const-string v2, "readOptionalFieldWithExp\u2026Required, ANY_TO_BOOLEAN)"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/yandex/div2/DivImageBackgroundJsonParser;->i:Lzbb;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/yandex/div2/DivImageBackgroundTemplate;->g:Ltp3;

    move-object v7, v0

    goto :goto_6

    :cond_6
    move-object v7, v13

    :goto_6
    sget-object v0, Lcom/yandex/div2/DivImageScale;->FROM_STRING:Le74;

    const-string v4, "scale"

    move-object v2, v11

    move-object/from16 v3, p3

    move v6, v1

    move-object v1, v8

    move-object v8, v0

    invoke-static/range {v2 .. v8}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v0

    const-string v2, "readOptionalFieldWithExp\u2026ivImageScale.FROM_STRING)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v12

    move-object v3, v9

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object v8, v1

    move-object v9, v0

    invoke-direct/range {v2 .. v9}, Lcom/yandex/div2/DivImageBackgroundTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v12
.end method

.method public e(Lex7;Lcom/yandex/div2/DivImageBackgroundTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivImageBackgroundTemplate;->a:Ltp3;

    const-string v2, "alpha"

    invoke-static {p1, v0, v2, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivImageBackgroundTemplate;->b:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivAlignmentHorizontal;->TO_STRING:Le74;

    const-string v3, "content_alignment_horizontal"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivImageBackgroundTemplate;->c:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivAlignmentVertical;->TO_STRING:Le74;

    const-string v3, "content_alignment_vertical"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivImageBackgroundTemplate;->d:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivImageBackgroundJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->f3()Lyi5;

    move-result-object p0

    const-string v2, "filters"

    invoke-static {p1, v0, v2, v1, p0}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object p0, p2, Lcom/yandex/div2/DivImageBackgroundTemplate;->e:Ltp3;

    sget-object v1, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->c:Le74;

    const-string v2, "image_url"

    invoke-static {p1, v0, v2, p0, v1}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string p0, "preload_required"

    iget-object v1, p2, Lcom/yandex/div2/DivImageBackgroundTemplate;->f:Ltp3;

    invoke-static {p1, v0, p0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivImageBackgroundTemplate;->g:Ltp3;

    sget-object p2, Lcom/yandex/div2/DivImageScale;->TO_STRING:Le74;

    const-string v1, "scale"

    invoke-static {p1, v0, v1, p0, p2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    const-string p0, "type"

    const-string p2, "image"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
