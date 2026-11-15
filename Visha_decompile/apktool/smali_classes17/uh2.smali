.class public final Luh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luh2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivCurrencyInputMaskTemplate;

    invoke-virtual {p0, p1, p2}, Luh2;->e(Lex7;Lcom/yandex/div2/DivCurrencyInputMaskTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivCurrencyInputMaskTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Luh2;->d(Lex7;Lcom/yandex/div2/DivCurrencyInputMaskTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCurrencyInputMaskTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivCurrencyInputMaskTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCurrencyInputMaskTemplate;
    .locals 8

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->c()Z

    move-result p0

    invoke-static {p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object p1

    new-instance v6, Lcom/yandex/div2/DivCurrencyInputMaskTemplate;

    sget-object v3, Lacb;->c:Lzbb;

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/yandex/div2/DivCurrencyInputMaskTemplate;->a:Ltp3;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v7

    :goto_0
    const-string v2, "locale"

    move-object v0, p1

    move-object v1, p3

    move v4, p0

    invoke-static/range {v0 .. v5}, Lra5;->t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v0

    const-string v1, "readOptionalFieldWithExp\u2026Override, parent?.locale)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v7, p2, Lcom/yandex/div2/DivCurrencyInputMaskTemplate;->b:Ltp3;

    :cond_1
    const-string p2, "raw_text_variable"

    invoke-static {p1, p3, p2, p0, v7}, Lra5;->c(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object p0

    const-string p1, "readField(context, data,\u2026 parent?.rawTextVariable)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v0, p0}, Lcom/yandex/div2/DivCurrencyInputMaskTemplate;-><init>(Ltp3;Ltp3;)V

    return-object v6
.end method

.method public e(Lex7;Lcom/yandex/div2/DivCurrencyInputMaskTemplate;)Lorg/json/JSONObject;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivCurrencyInputMaskTemplate;->a:Ltp3;

    const-string v1, "locale"

    invoke-static {p1, p0, v1, v0}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "raw_text_variable"

    iget-object p2, p2, Lcom/yandex/div2/DivCurrencyInputMaskTemplate;->b:Ltp3;

    invoke-static {p1, p0, v0, p2}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string p2, "type"

    const-string v0, "currency"

    invoke-static {p1, p0, p2, v0}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
