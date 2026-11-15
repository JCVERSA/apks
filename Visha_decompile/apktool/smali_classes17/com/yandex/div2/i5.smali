.class public final Lcom/yandex/div2/i5;
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

    iput-object p1, p0, Lcom/yandex/div2/i5;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/i5;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVideoSource;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivVideoSource;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/i5;->e(Lex7;Lcom/yandex/div2/DivVideoSource;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVideoSource;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivVideoSource;

    sget-object v1, Lacb;->b:Lzbb;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    const-string v3, "bitrate"

    invoke-static {p1, p2, v3, v1, v2}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    const-string v2, "mime_type"

    sget-object v3, Lacb;->c:Lzbb;

    invoke-static {p1, p2, v2, v3}, Lpa5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    const-string v3, "readExpression(context, \u2026ype\", TYPE_HELPER_STRING)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div2/i5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->n9()Lyi5;

    move-result-object p0

    const-string v3, "resolution"

    invoke-static {p1, p2, v3, p0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivVideoSource$Resolution;

    sget-object v3, Lacb;->e:Lzbb;

    sget-object v4, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v5, "url"

    invoke-static {p1, p2, v5, v3, v4}, Lpa5;->e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    const-string p2, "readExpression(context, \u2026E_HELPER_URI, ANY_TO_URI)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/yandex/div2/DivVideoSource;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVideoSource$Resolution;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivVideoSource;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivVideoSource;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "bitrate"

    invoke-static {p1, v0, v2, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "mime_type"

    iget-object v2, p2, Lcom/yandex/div2/DivVideoSource;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivVideoSource;->c:Lcom/yandex/div2/DivVideoSource$Resolution;

    iget-object p0, p0, Lcom/yandex/div2/i5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->n9()Lyi5;

    move-result-object p0

    const-string v2, "resolution"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string p0, "type"

    const-string v1, "video_source"

    invoke-static {p1, v0, p0, v1}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p2, Lcom/yandex/div2/DivVideoSource;->d:Lcom/yandex/div/json/expressions/Expression;

    sget-object p2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->c:Le74;

    const-string v1, "url"

    invoke-static {p1, v0, v1, p0, p2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    return-object v0
.end method
