.class public final Lhm2;
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

    iput-object p1, p0, Lhm2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivLayoutProviderTemplate;

    invoke-virtual {p0, p1, p2}, Lhm2;->e(Lex7;Lcom/yandex/div2/DivLayoutProviderTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivLayoutProviderTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lhm2;->d(Lex7;Lcom/yandex/div2/DivLayoutProviderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivLayoutProviderTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivLayoutProviderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivLayoutProviderTemplate;
    .locals 4

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->c()Z

    move-result p0

    invoke-static {p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object p1

    new-instance v0, Lcom/yandex/div2/DivLayoutProviderTemplate;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/yandex/div2/DivLayoutProviderTemplate;->a:Ltp3;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, "height_variable_name"

    invoke-static {p1, p3, v3, p0, v2}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v2

    const-string v3, "readOptionalField(contex\u2026rent?.heightVariableName)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/yandex/div2/DivLayoutProviderTemplate;->b:Ltp3;

    :cond_1
    const-string p2, "width_variable_name"

    invoke-static {p1, p3, p2, p0, v1}, Lra5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object p0

    const-string p1, "readOptionalField(contex\u2026arent?.widthVariableName)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, p0}, Lcom/yandex/div2/DivLayoutProviderTemplate;-><init>(Ltp3;Ltp3;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivLayoutProviderTemplate;)Lorg/json/JSONObject;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivLayoutProviderTemplate;->a:Ltp3;

    const-string v1, "height_variable_name"

    invoke-static {p1, p0, v1, v0}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "width_variable_name"

    iget-object p2, p2, Lcom/yandex/div2/DivLayoutProviderTemplate;->b:Ltp3;

    invoke-static {p1, p0, v0, p2}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    return-object p0
.end method
