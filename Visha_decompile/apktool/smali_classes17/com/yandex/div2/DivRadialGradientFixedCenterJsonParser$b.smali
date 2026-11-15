.class public final Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradientFixedCenter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivRadialGradientFixedCenter;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivRadialGradientFixedCenter;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivRadialGradientFixedCenter;
    .locals 7

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivRadialGradientFixedCenter;

    sget-object v3, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser;->c:Lzbb;

    sget-object v4, Lcom/yandex/div2/DivSizeUnit;->FROM_STRING:Le74;

    sget-object v6, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "unit"

    move-object v0, p1

    move-object v1, p2

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    sget-object v0, Lacb;->b:Lzbb;

    sget-object v1, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    const-string v2, "value"

    invoke-static {p1, p2, v2, v0, v1}, Lpa5;->e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    const-string p2, "readExpression(context, \u2026ELPER_INT, NUMBER_TO_INT)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6, p1}, Lcom/yandex/div2/DivRadialGradientFixedCenter;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivRadialGradientFixedCenter;)Lorg/json/JSONObject;
    .locals 4

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "fixed"

    invoke-static {p1, v0, v1, v2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/yandex/div2/DivRadialGradientFixedCenter;->a:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivSizeUnit;->TO_STRING:Le74;

    const-string v3, "unit"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object p2, p2, Lcom/yandex/div2/DivRadialGradientFixedCenter;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, p0, p2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method
