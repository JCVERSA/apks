.class public final Lth2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lth2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lth2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCurrencyInputMask;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivCurrencyInputMask;

    invoke-virtual {p0, p1, p2}, Lth2;->e(Lex7;Lcom/yandex/div2/DivCurrencyInputMask;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCurrencyInputMask;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivCurrencyInputMask;

    const-string v0, "locale"

    sget-object v1, Lacb;->c:Lzbb;

    invoke-static {p1, p2, v0, v1}, Lpa5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    const-string v1, "raw_text_variable"

    invoke-static {p1, p2, v1}, Ltb5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "read(context, data, \"raw_text_variable\")"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/yandex/div2/DivCurrencyInputMask;-><init>(Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivCurrencyInputMask;)Lorg/json/JSONObject;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivCurrencyInputMask;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v1, "locale"

    invoke-static {p1, p0, v1, v0}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "raw_text_variable"

    invoke-virtual {p2}, Lcom/yandex/div2/DivCurrencyInputMask;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, v0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "type"

    const-string v0, "currency"

    invoke-static {p1, p0, p2, v0}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
