.class public final Ljjb;
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

    iput-object p1, p0, Ljjb;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/UrlVariableTemplate;

    invoke-virtual {p0, p1, p2}, Ljjb;->e(Lex7;Lcom/yandex/div2/UrlVariableTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/UrlVariableTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Ljjb;->d(Lex7;Lcom/yandex/div2/UrlVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/UrlVariableTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/UrlVariableTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/UrlVariableTemplate;
    .locals 7

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->c()Z

    move-result v3

    invoke-static {p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v0

    new-instance p0, Lcom/yandex/div2/UrlVariableTemplate;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/yandex/div2/UrlVariableTemplate;->a:Ltp3;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const-string v2, "name"

    invoke-static {v0, p3, v2, v3, v1}, Lra5;->c(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v6

    const-string v1, "readField(context, data,\u2026owOverride, parent?.name)"

    invoke-static {v6, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object p1, p2, Lcom/yandex/div2/UrlVariableTemplate;->b:Ltp3;

    :cond_1
    move-object v4, p1

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v2, "value"

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lra5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Le74;)Ltp3;

    move-result-object p1

    const-string p2, "readField(context, data,\u2026arent?.value, ANY_TO_URI)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6, p1}, Lcom/yandex/div2/UrlVariableTemplate;-><init>(Ltp3;Ltp3;)V

    return-object p0
.end method

.method public e(Lex7;Lcom/yandex/div2/UrlVariableTemplate;)Lorg/json/JSONObject;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/UrlVariableTemplate;->a:Ltp3;

    const-string v2, "name"

    invoke-static {p1, v0, v2, v1}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "type"

    const-string v2, "url"

    invoke-static {p1, v0, v1, v2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/yandex/div2/UrlVariableTemplate;->b:Ltp3;

    sget-object v1, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->c:Le74;

    invoke-static {p1, v0, p0, p2, v1}, Lra5;->H(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    return-object v0
.end method
