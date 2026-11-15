.class public final Lcom/yandex/div2/q;
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

    iput-object p1, p0, Lcom/yandex/div2/q;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionSubmitTemplate$RequestTemplate$HeaderTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/q;->b(Lex7;Lcom/yandex/div2/DivActionSubmitTemplate$RequestTemplate$HeaderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSubmit$Request$Header;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivActionSubmitTemplate$RequestTemplate$HeaderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSubmit$Request$Header;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivActionSubmit$Request$Header;

    iget-object v0, p2, Lcom/yandex/div2/DivActionSubmitTemplate$RequestTemplate$HeaderTemplate;->a:Ltp3;

    sget-object v1, Lacb;->c:Lzbb;

    const-string v2, "name"

    invoke-static {p1, v0, p3, v2, v1}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    const-string v2, "resolveExpression(contex\u2026ame\", TYPE_HELPER_STRING)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/yandex/div2/DivActionSubmitTemplate$RequestTemplate$HeaderTemplate;->b:Ltp3;

    const-string v2, "value"

    invoke-static {p1, p2, p3, v2, v1}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    const-string p2, "resolveExpression(contex\u2026lue\", TYPE_HELPER_STRING)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/yandex/div2/DivActionSubmit$Request$Header;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method
