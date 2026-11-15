.class public final Lwe2;
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

    iput-object p1, p0, Lwe2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lwe2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionDownload;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionDownload;

    invoke-virtual {p0, p1, p2}, Lwe2;->e(Lex7;Lcom/yandex/div2/DivActionDownload;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionDownload;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivActionDownload;

    iget-object v1, p0, Lwe2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v1

    const-string v2, "on_fail_actions"

    invoke-static {p1, p2, v2, v1}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lwe2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object p0

    const-string v2, "on_success_actions"

    invoke-static {p1, p2, v2, p0}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object p0

    sget-object v2, Lacb;->e:Lzbb;

    sget-object v3, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v4, "url"

    invoke-static {p1, p2, v4, v2, v3}, Lpa5;->e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    const-string p2, "readExpression(context, \u2026E_HELPER_URI, ANY_TO_URI)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0, p1}, Lcom/yandex/div2/DivActionDownload;-><init>(Ljava/util/List;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivActionDownload;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivActionDownload;->a:Ljava/util/List;

    iget-object v2, p0, Lwe2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v2

    const-string v3, "on_fail_actions"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivActionDownload;->b:Ljava/util/List;

    iget-object p0, p0, Lwe2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object p0

    const-string v2, "on_success_actions"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    const-string p0, "type"

    const-string v1, "download"

    invoke-static {p1, v0, p0, v1}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p2, Lcom/yandex/div2/DivActionDownload;->c:Lcom/yandex/div/json/expressions/Expression;

    sget-object p2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->c:Le74;

    const-string v1, "url"

    invoke-static {p1, v0, v1, p0, p2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    return-object v0
.end method
