.class public final Lvp2;
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

    iput-object p1, p0, Lvp2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivShapeDrawableTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lvp2;->b(Lex7;Lcom/yandex/div2/DivShapeDrawableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivShapeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivShapeDrawableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivShapeDrawable;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivShapeDrawable;

    iget-object v2, p2, Lcom/yandex/div2/DivShapeDrawableTemplate;->a:Ltp3;

    sget-object v5, Lacb;->f:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v4, "color"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->h(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    const-string v2, "resolveExpression(contex\u2026LOR, STRING_TO_COLOR_INT)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p2, Lcom/yandex/div2/DivShapeDrawableTemplate;->b:Ltp3;

    iget-object v2, p0, Lvp2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->U6()Lyi5;

    move-result-object v7

    iget-object v2, p0, Lvp2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->S6()Lyi5;

    move-result-object v8

    const-string v6, "shape"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->d(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "resolve(context, templat\u2026divShapeJsonEntityParser)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/yandex/div2/DivShape;

    iget-object v4, p2, Lcom/yandex/div2/DivShapeDrawableTemplate;->c:Ltp3;

    iget-object p2, p0, Lvp2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->y7()Lyi5;

    move-result-object v7

    iget-object p0, p0, Lvp2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->w7()Lyi5;

    move-result-object v8

    const-string v6, "stroke"

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivStroke;

    invoke-direct {v0, v1, v2, p0}, Lcom/yandex/div2/DivShapeDrawable;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivShape;Lcom/yandex/div2/DivStroke;)V

    return-object v0
.end method
