.class public final Lcom/yandex/div2/DivStrokeJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivStrokeJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivStrokeJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivStrokeJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStroke;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivStroke;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivStrokeJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivStroke;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStroke;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivStroke;

    sget-object v1, Lacb;->f:Lzbb;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v3, "color"

    invoke-static {p1, p2, v3, v1, v2}, Lpa5;->e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    const-string v2, "readExpression(context, \u2026LOR, STRING_TO_COLOR_INT)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div2/DivStrokeJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->C7()Lyi5;

    move-result-object p0

    const-string v2, "style"

    invoke-static {p1, p2, v2, p0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivStrokeStyle;

    if-nez p0, :cond_0

    sget-object p0, Lcom/yandex/div2/DivStrokeJsonParser;->b:Lcom/yandex/div2/DivStrokeStyle$c;

    :cond_0
    const-string v2, "JsonPropertyParser.readO\u2026r) ?: STYLE_DEFAULT_VALUE"

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivStrokeJsonParser;->e:Lzbb;

    sget-object v7, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v2, Lcom/yandex/div2/DivStrokeJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v5, "unit"

    move-object v3, p1

    move-object v4, p2

    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    sget-object v6, Lacb;->d:Lzbb;

    sget-object v7, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v8, Lcom/yandex/div2/DivStrokeJsonParser;->f:Lpnb;

    sget-object v10, Lcom/yandex/div2/DivStrokeJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v5, "width"

    move-object v3, p1

    move-object v4, p2

    move-object v9, v10

    invoke-static/range {v3 .. v9}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v10, p1

    :goto_1
    invoke-direct {v0, v1, p0, v2, v10}, Lcom/yandex/div2/DivStroke;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivStrokeStyle;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivStroke;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivStroke;->a:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v3, "color"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivStroke;->b:Lcom/yandex/div2/DivStrokeStyle;

    iget-object p0, p0, Lcom/yandex/div2/DivStrokeJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->C7()Lyi5;

    move-result-object p0

    const-string v2, "style"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object p0, p2, Lcom/yandex/div2/DivStroke;->c:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivSizeUnit;->TO_STRING:Le74;

    const-string v2, "unit"

    invoke-static {p1, v0, v2, p0, v1}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string p0, "width"

    iget-object p2, p2, Lcom/yandex/div2/DivStroke;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, p0, p2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method
