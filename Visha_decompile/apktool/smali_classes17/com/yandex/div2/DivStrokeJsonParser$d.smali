.class public final Lcom/yandex/div2/DivStrokeJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivStrokeJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivStrokeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivStrokeTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivStrokeJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivStrokeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStroke;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivStrokeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStroke;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivStroke;

    iget-object v2, p2, Lcom/yandex/div2/DivStrokeTemplate;->a:Ltp3;

    sget-object v5, Lacb;->f:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v4, "color"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->h(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    const-string v2, "resolveExpression(contex\u2026LOR, STRING_TO_COLOR_INT)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p2, Lcom/yandex/div2/DivStrokeTemplate;->b:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivStrokeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->E7()Lyi5;

    move-result-object v7

    iget-object p0, p0, Lcom/yandex/div2/DivStrokeJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->C7()Lyi5;

    move-result-object v8

    const-string v6, "style"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivStrokeStyle;

    if-nez p0, :cond_0

    sget-object p0, Lcom/yandex/div2/DivStrokeJsonParser;->b:Lcom/yandex/div2/DivStrokeStyle$c;

    :cond_0
    const-string v2, "JsonFieldResolver.resolv\u2026r) ?: STYLE_DEFAULT_VALUE"

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p2, Lcom/yandex/div2/DivStrokeTemplate;->c:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivStrokeJsonParser;->e:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v2, Lcom/yandex/div2/DivStrokeJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "unit"

    move-object v3, p1

    move-object v5, p3

    move-object v9, v2

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    iget-object v4, p2, Lcom/yandex/div2/DivStrokeTemplate;->d:Ltp3;

    sget-object v7, Lacb;->d:Lzbb;

    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v9, Lcom/yandex/div2/DivStrokeJsonParser;->f:Lpnb;

    sget-object p2, Lcom/yandex/div2/DivStrokeJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "width"

    move-object v3, p1

    move-object v5, p3

    move-object v10, p2

    invoke-static/range {v3 .. v10}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p1

    :goto_1
    invoke-direct {v0, v1, p0, v2, p2}, Lcom/yandex/div2/DivStroke;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivStrokeStyle;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method
