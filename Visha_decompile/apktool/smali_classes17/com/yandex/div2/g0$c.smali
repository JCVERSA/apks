.class public final Lcom/yandex/div2/g0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/g0;
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

    iput-object p1, p0, Lcom/yandex/div2/g0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivBorderTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/g0$c;->e(Lex7;Lcom/yandex/div2/DivBorderTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivBorderTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/g0$c;->d(Lex7;Lcom/yandex/div2/DivBorderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivBorderTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivBorderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivBorderTemplate;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    move-object/from16 v11, p3

    invoke-static {v11, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v2

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v12

    new-instance v13, Lcom/yandex/div2/DivBorderTemplate;

    sget-object v6, Lacb;->b:Lzbb;

    const/4 v14, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/yandex/div2/DivBorderTemplate;->a:Ltp3;

    move-object v8, v3

    goto :goto_0

    :cond_0
    move-object v8, v14

    :goto_0
    sget-object v9, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v10, Lcom/yandex/div2/g0;->c:Lpnb;

    const-string v5, "corner_radius"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    invoke-static/range {v3 .. v10}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v10

    const-string v3, "readOptionalFieldWithExp\u2026 CORNER_RADIUS_VALIDATOR)"

    invoke-static {v10, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/yandex/div2/DivBorderTemplate;->b:Ltp3;

    move-object v7, v3

    goto :goto_1

    :cond_1
    move-object v7, v14

    :goto_1
    iget-object v3, v0, Lcom/yandex/div2/g0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->q2()Lyi5;

    move-result-object v8

    const-string v5, "corners_radius"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v15

    const-string v3, "readOptionalField(contex\u2026RadiusJsonTemplateParser)"

    invoke-static {v15, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lacb;->a:Lzbb;

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/yandex/div2/DivBorderTemplate;->c:Ltp3;

    move-object v8, v3

    goto :goto_2

    :cond_2
    move-object v8, v14

    :goto_2
    sget-object v9, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v5, "has_shadow"

    move-object v3, v12

    move-object/from16 v4, p3

    move v7, v2

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026asShadow, ANY_TO_BOOLEAN)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/yandex/div2/DivBorderTemplate;->d:Ltp3;

    move-object v7, v3

    goto :goto_3

    :cond_3
    move-object v7, v14

    :goto_3
    iget-object v3, v0, Lcom/yandex/div2/g0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->N6()Lyi5;

    move-result-object v8

    const-string v5, "shadow"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v3, "readOptionalField(contex\u2026ShadowJsonTemplateParser)"

    invoke-static {v8, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/yandex/div2/DivBorderTemplate;->e:Ltp3;

    move-object v7, v1

    goto :goto_4

    :cond_4
    move-object v7, v14

    :goto_4
    iget-object v0, v0, Lcom/yandex/div2/g0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->x7()Lyi5;

    move-result-object v0

    const-string v5, "stroke"

    move-object v3, v12

    move-object/from16 v4, p3

    move v6, v2

    move-object v1, v8

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v0, "readOptionalField(contex\u2026StrokeJsonTemplateParser)"

    invoke-static {v8, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v13

    move-object v4, v10

    move-object v5, v15

    move-object v6, v9

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/yandex/div2/DivBorderTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v13
.end method

.method public e(Lex7;Lcom/yandex/div2/DivBorderTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivBorderTemplate;->a:Ltp3;

    const-string v2, "corner_radius"

    invoke-static {p1, v0, v2, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivBorderTemplate;->b:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/g0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->q2()Lyi5;

    move-result-object v2

    const-string v3, "corners_radius"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "has_shadow"

    iget-object v2, p2, Lcom/yandex/div2/DivBorderTemplate;->c:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object v1, p2, Lcom/yandex/div2/DivBorderTemplate;->d:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/g0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->N6()Lyi5;

    move-result-object v2

    const-string v3, "shadow"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object p2, p2, Lcom/yandex/div2/DivBorderTemplate;->e:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/g0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->x7()Lyi5;

    move-result-object p0

    const-string v1, "stroke"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
